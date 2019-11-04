/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.resultparty.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.event.service.SysEventService;
import com.thinkgem.jeesite.modules.party.service.SysPartCandidateService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.resultparty.entity.SysResultParty;
import com.thinkgem.jeesite.modules.resultparty.service.SysResultPartyService;

import java.util.List;

/**
 * resultPartyController
 *
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/resultparty/sysResultParty")
public class SysResultPartyController extends BaseController {

    @Autowired
    private SysResultPartyService sysResultPartyService;

    @Autowired
    private SysEventService sysEventService;

    @Autowired
    private SysPartCandidateService sysPartCandidateService;


    @ModelAttribute
    public SysResultParty get(@RequestParam(required = false) String id) {
        SysResultParty entity = null;
        if (StringUtils.isNotBlank(id)) {
            entity = sysResultPartyService.get(id);
        }
        if (entity == null) {
            entity = new SysResultParty();
        }
        return entity;
    }

    @RequiresPermissions("resultparty:sysResultParty:view")
    @RequestMapping(value = {"list", ""})
    public String list(SysResultParty sysResultParty, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<SysResultParty> page = sysResultPartyService.findPage(new Page<SysResultParty>(request, response), sysResultParty);
        model.addAttribute("page", page);
        return "modules/resultparty/sysResultPartyList";
    }

    /**
     * This function is for displaying the result of party
     */
    @RequiresPermissions("resultparty:sysResultParty:view")
    @RequestMapping(value = "calculate")
    public String calculate(SysResultParty sysResultParty, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<SysResultParty> page = sysResultPartyService.findPage(new Page<SysResultParty>(request, response), sysResultParty);
        List<SysResultParty> resultParties = page.getList();
        for (int i = 0; i < resultParties.size(); i++) {
            for (int j = i + 1; j < resultParties.size(); j++) {
                if (resultParties.get(i).getPartyid().equals(resultParties.get(j).getPartyid()) && resultParties.get(j).getEventid().equals(resultParties.get(j).getEventid())) {
                    resultParties.get(i).setResult(Integer.toString(Integer.valueOf(resultParties.get(i).getResult()) + Integer.valueOf(resultParties.get(j).getResult())));
                    resultParties.remove(j);
                    j = j - 1;
                }
            }
        }

        for (int i = 0; i < resultParties.size(); i++) {
            resultParties.get(i).setEventid(sysEventService.get(resultParties.get(i).getEventid()).getEventname());
            resultParties.get(i).setPartyid(sysPartCandidateService.get(resultParties.get(i).getPartyid()).getPartyname());
        }

        Page<SysResultParty> resultPage = new Page<SysResultParty>();
        resultPage.setList(resultParties);

        model.addAttribute("page", resultPage);
        return "modules/resultparty/calculateResult";
    }

    @RequiresPermissions("resultparty:sysResultParty:view")
    @RequestMapping(value = "form")
    public String form(SysResultParty sysResultParty, Model model) {
        model.addAttribute("sysResultParty", sysResultParty);
        return "modules/resultparty/sysResultPartyForm";
    }

    @RequiresPermissions("resultparty:sysResultParty:edit")
    @RequestMapping(value = "save")
    public String save(SysResultParty sysResultParty, Model model, RedirectAttributes redirectAttributes) {
        if (!beanValidator(model, sysResultParty)) {
            return form(sysResultParty, model);
        }
        sysResultPartyService.save(sysResultParty);
        addMessage(redirectAttributes, "保存resultParty成功");
        return "redirect:" + Global.getAdminPath() + "/resultparty/sysResultParty/?repage";
    }

    @RequiresPermissions("resultparty:sysResultParty:edit")
    @RequestMapping(value = "delete")
    public String delete(SysResultParty sysResultParty, RedirectAttributes redirectAttributes) {
        sysResultPartyService.delete(sysResultParty);
        addMessage(redirectAttributes, "删除resultParty成功");
        return "redirect:" + Global.getAdminPath() + "/resultparty/sysResultParty/?repage";
    }


    @RequestMapping(value = "vote")
    public String vote(SysResultParty sysResultParty, Model model, RedirectAttributes redirectAttributes) {
        String partyID = sysResultParty.getId().split(" ")[0];
        char[] c = partyID.toCharArray();
        String party = "";
        String peopleUser = "";
        char[] userID = UserUtils.getUser().getId().toCharArray();
        String eventID = sysResultParty.getId().split(" ")[1];
        String size = sysResultParty.getId().split(" ")[2];

        for (int i = 0; i < c.length / 2; i++) {
            party = c[i] + party;
        }

        if (userID.length > 3) {
            for (int i = 0; i < 3; i++) {
                peopleUser = peopleUser + userID[i];
            }
        } else {
            for (int i = 0; i < userID.length; i++) {
                peopleUser = peopleUser + userID[i];
            }
        }

        sysResultParty.setId(party + eventID + peopleUser);
        sysResultParty.setEventid(eventID);
        sysResultParty.setPartyid(partyID);
        sysResultParty.setIsNewRecord(true);

        //For test
        if (sysResultPartyService.get(party + eventID + peopleUser) == null) {
            sysResultParty.setResult(size);
            size = Integer.toString(Integer.valueOf(size) - 1);
//		System.out.println(partyID + "%%%%%%%%%%%%%%%%" + eventID);
            sysResultPartyService.save(sysResultParty);
        } else {
            addMessage(redirectAttributes, "You cannot vote same party.");
        }

        if (Integer.valueOf(size) > 1) {
            System.out.println("Is it here?????");
            return "redirect:" + Global.getAdminPath() + "/party/sysPartCandidate/eTOp?id=" + eventID + " " + size;
        } else {
            return "redirect:" + Global.getAdminPath() + "/event/sysEvent/display";
        }
//		addMessage(redirectAttributes, "保存resultParty成功");
    }
}