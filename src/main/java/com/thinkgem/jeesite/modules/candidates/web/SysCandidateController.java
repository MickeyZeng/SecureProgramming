/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.candidates.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.event.entity.SysEvent;
import com.thinkgem.jeesite.modules.party.entity.SysPartCandidate;
import com.thinkgem.jeesite.modules.party.service.SysPartCandidateService;
import com.thinkgem.jeesite.modules.partyevent.service.SysPartyEventService;
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
import com.thinkgem.jeesite.modules.candidates.entity.SysCandidate;
import com.thinkgem.jeesite.modules.candidates.service.SysCandidateService;

import java.util.ArrayList;
import java.util.List;

/**
 * CandidatesController
 *
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/candidates/sysCandidate")
public class SysCandidateController extends BaseController {

    @Autowired
    private SysCandidateService sysCandidateService;

    @Autowired
    private SysPartyEventService sysPartyEventService;

    @Autowired
    private SysPartCandidateService sysPartCandidateService;


    @ModelAttribute
    public SysCandidate get(@RequestParam(required = false) String id) {
        SysCandidate entity = null;
        if (StringUtils.isNotBlank(id)) {
            entity = sysCandidateService.get(id);
        }
        if (entity == null) {
            entity = new SysCandidate();
        }
        return entity;
    }

    @RequiresPermissions("candidates:sysCandidate:view")
    @RequestMapping(value = {"list", ""})
    public String list(SysCandidate sysCandidate, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<SysCandidate> page = sysCandidateService.findPage(new Page<SysCandidate>(request, response), sysCandidate);
        model.addAttribute("page", page);
        return "modules/candidates/sysCandidateList";
    }

    @RequiresPermissions("candidates:sysCandidate:view")
    @RequestMapping(value = "form")
    public String form(SysCandidate sysCandidate, Model model) {
        model.addAttribute("sysCandidate", sysCandidate);
        return "modules/candidates/sysCandidateForm";
    }

    @RequiresPermissions("candidates:sysCandidate:edit")
    @RequestMapping(value = "save")
    public String save(SysCandidate sysCandidate, Model model, RedirectAttributes redirectAttributes) {
        if (!beanValidator(model, sysCandidate)) {
            return form(sysCandidate, model);
        }
        sysCandidateService.save(sysCandidate);
        addMessage(redirectAttributes, "保存Candidates成功");
        return "redirect:" + Global.getAdminPath() + "/candidates/sysCandidate/?repage";
    }

    @RequiresPermissions("candidates:sysCandidate:edit")
    @RequestMapping(value = "delete")
    public String delete(SysCandidate sysCandidate, RedirectAttributes redirectAttributes) {
        sysCandidateService.delete(sysCandidate);
        addMessage(redirectAttributes, "删除Candidates成功");
        return "redirect:" + Global.getAdminPath() + "/candidates/sysCandidate/?repage";
    }

    @RequestMapping(value = "eTOp")
    public String eventToPerson(SysEvent sysEvent, HttpServletRequest request, HttpServletResponse response, Model model) {
        SysCandidate sysCandidate = new SysCandidate();
        SysPartCandidate sysPartCandidate = new SysPartCandidate();
        String size;
        if (sysEvent.getId().split(" ").length == 1) {
            size = "";
        }else{
        	size = sysEvent.getId().split(" ")[1];
		}


        //Got party according party ID
        List<String> partyID = sysPartyEventService.findPartyID(sysEvent.getId().split(" ")[0]);
        List<String> partyName = new ArrayList<String>();
        List<SysPartCandidate> partyList = sysPartCandidateService.findList(sysPartCandidate);


//        System.out.println("!!!!!!!" + partyID.toString() + "*********");

        for (int i = 0; i < partyID.size(); i++) {
            for (int j = 0; j < partyList.size(); j++) {
                if (partyID.get(i).equals(partyList.get(j).getPartyid())) {
                    partyName.add(partyList.get(j).getPartyname());
                }
            }
//			partyName.add(sysPartCandidateService.get(partyID.get(i)).getPartyname());
        }


        //Got the party name
        Page<SysCandidate> page = sysCandidateService.findPage(new Page<SysCandidate>(request, response), sysCandidate);
        Page<SysCandidate> resultPage = new Page<SysCandidate>();
        List<SysCandidate> sysCandidates = new ArrayList<SysCandidate>();
        List<SysCandidate> results = new ArrayList<SysCandidate>();
        sysCandidates = page.getList();
        for (int i = 0; i < sysCandidates.size(); i++) {
            for (int j = 0; j < partyName.size(); j++) {
//                System.out.println(sysCandidates.get(i).getPartyid() + "#######" + partyName.get(j));
                if (sysCandidates.get(i).getPartyid().equals(partyName.get(j))) {
//                    System.out.println(sysCandidates.get(i).getCandidatename() + "^^^^^^^^^^");
                    results.add(sysCandidates.get(i));
                }
            }
        }

        resultPage.setList(results);
        model.addAttribute("page", resultPage);
        model.addAttribute("eventID", sysEvent.getId().split(" ")[0]);
        if (size == "" || size.length() == 0) {
            System.out.println("Size!!!!!1111111");
			model.addAttribute("sizes", results.size());
		}else{
            System.out.println("Size!!!!!22222222");
            System.out.println(size);
        	model.addAttribute("sizes", size);
		}

        return "modules/candidates/eventToPerson";
    }

}