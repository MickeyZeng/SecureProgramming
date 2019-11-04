/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.resultcandidate.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.candidates.service.SysCandidateService;
import com.thinkgem.jeesite.modules.event.service.SysEventService;
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
import com.thinkgem.jeesite.modules.resultcandidate.entity.SysResultCandidate;
import com.thinkgem.jeesite.modules.resultcandidate.service.SysResultCandidateService;

import java.util.ArrayList;
import java.util.List;

/**
 * resultCandidateController
 *
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/resultcandidate/sysResultCandidate")
public class SysResultCandidateController extends BaseController {

    @Autowired
    private SysResultCandidateService sysResultCandidateService;

    @Autowired
    private SysEventService sysEventService;

    @Autowired
    private SysCandidateService sysCandidateService;


    @ModelAttribute
    public SysResultCandidate get(@RequestParam(required = false) String id) {
        SysResultCandidate entity = null;
        if (StringUtils.isNotBlank(id)) {
            entity = sysResultCandidateService.get(id);
        }
        if (entity == null) {
            entity = new SysResultCandidate();
        }
        return entity;
    }

    @RequiresPermissions("resultcandidate:sysResultCandidate:view")
    @RequestMapping(value = {"list", ""})
    public String list(SysResultCandidate sysResultCandidate, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<SysResultCandidate> page = sysResultCandidateService.findPage(new Page<SysResultCandidate>(request, response), sysResultCandidate);
        model.addAttribute("page", page);
        return "modules/resultcandidate/sysResultCandidateList";
    }

    /**
     *This fucntion is to display the reuslt of candidate in each event
     */
    @RequiresPermissions("resultcandidate:sysResultCandidate:view")
    @RequestMapping(value = "calculate")
    public String calculate(SysResultCandidate sysResultCandidate, HttpServletRequest request, HttpServletResponse response, Model model) {
        Page<SysResultCandidate> page = sysResultCandidateService.findPage(new Page<SysResultCandidate>(request, response), sysResultCandidate);
        List<SysResultCandidate> resultCandidates = page.getList();
        for (int i = 0; i < resultCandidates.size(); i++) {
            for (int j = i + 1; j < resultCandidates.size(); j++) {
                if (resultCandidates.get(i).getEventid().equals(resultCandidates.get(j).getEventid()) && resultCandidates.get(i).getCandidateid().equals(resultCandidates.get(j).getCandidateid())) {
                    resultCandidates.get(i).setResult(Integer.toString(Integer.valueOf(resultCandidates.get(i).getResult()) + Integer.valueOf(resultCandidates.get(j).getResult())));
                    resultCandidates.remove(j);
                    j = j - 1;
                    System.out.println("r u here in one time??");
                }
            }
        }
        for (int i = 0; i < resultCandidates.size(); i++) {
            resultCandidates.get(i).setEventid(sysEventService.get(resultCandidates.get(i).getEventid()).getEventname());
            resultCandidates.get(i).setCandidateid(sysCandidateService.get(resultCandidates.get(i).getCandidateid()).getCandidatename());
        }
        Page<SysResultCandidate> resultPage = new Page<SysResultCandidate>();
        resultPage.setList(resultCandidates);

        model.addAttribute("page", resultPage);
        return "modules/resultcandidate/calculateResult";
    }

    @RequiresPermissions("resultcandidate:sysResultCandidate:view")
    @RequestMapping(value = "form")
    public String form(SysResultCandidate sysResultCandidate, Model model) {
        model.addAttribute("sysResultCandidate", sysResultCandidate);
        return "modules/resultcandidate/sysResultCandidateForm";
    }

    @RequiresPermissions("resultcandidate:sysResultCandidate:edit")
    @RequestMapping(value = "save")
    public String save(SysResultCandidate sysResultCandidate, Model model, RedirectAttributes redirectAttributes) {
        if (!beanValidator(model, sysResultCandidate)) {
            return form(sysResultCandidate, model);
        }
        sysResultCandidateService.save(sysResultCandidate);
        addMessage(redirectAttributes, "保存resultCandidate成功");
        return "redirect:" + Global.getAdminPath() + "/resultcandidate/sysResultCandidate/?repage";
    }

    @RequiresPermissions("resultcandidate:sysResultCandidate:edit")
    @RequestMapping(value = "delete")
    public String delete(SysResultCandidate sysResultCandidate, RedirectAttributes redirectAttributes) {
        sysResultCandidateService.delete(sysResultCandidate);
        addMessage(redirectAttributes, "删除resultCandidate成功");
        return "redirect:" + Global.getAdminPath() + "/resultcandidate/sysResultCandidate/?repage";
    }

    @RequestMapping(value = "vote")
    public String vote(SysResultCandidate sysResultCandidate, Model model, RedirectAttributes redirectAttributes) {

        String personID = sysResultCandidate.getId().split(" ")[0];
        char[] c = personID.toCharArray();
        char[] userID = UserUtils.getUser().getId().toCharArray();
        String person = "";
        String peopleUser = "";
        String eventID = sysResultCandidate.getId().split(" ")[1];
        String result = sysResultCandidate.getId().split(" ")[2];

        for (int i = 0; i < c.length / 2; i++) {
            person = person + c[i];
        }

        if(userID.length > 3) {
            for (int i = 0; i < 3; i++) {
                peopleUser = peopleUser + userID[i];
            }
        }else{
            for (int i = 0; i < userID.length; i++) {
                peopleUser = peopleUser + userID[i];
            }
        }

        sysResultCandidate.setId(person + eventID + peopleUser);
        sysResultCandidate.setEventid(eventID);
        sysResultCandidate.setCandidateid(personID);
        sysResultCandidate.setIsNewRecord(true);

        //For test
        if (sysResultCandidateService.get(person + eventID + peopleUser) == null) {
            sysResultCandidate.setResult(result);
            result = Integer.toString(Integer.valueOf(result) - 1);
//		System.out.println(partyID + "%%%%%%%%%%%%%%%%" + eventID);
            sysResultCandidateService.save(sysResultCandidate);
        } else {
            addMessage(redirectAttributes, "You cannot vote same Candidate.");
        }
        if (Integer.valueOf(result) > 1) {
            System.out.println("Is it here?????");
            return "redirect:" + Global.getAdminPath() + "/candidates/sysCandidate/eTOp?id=" + eventID + " " + result;
        } else {
            return "redirect:" + Global.getAdminPath() + "/event/sysEvent/displayPerson";
        }
//		addMessage(redirectAttributes, "保存resultParty成功");
    }

}