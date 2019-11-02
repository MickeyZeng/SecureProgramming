/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.party.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.event.entity.SysEvent;
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
import com.thinkgem.jeesite.modules.party.entity.SysPartCandidate;
import com.thinkgem.jeesite.modules.party.service.SysPartCandidateService;

import java.util.ArrayList;
import java.util.List;

/**
 * partyController
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/party/sysPartCandidate")
public class SysPartCandidateController extends BaseController {

	@Autowired
	private SysPartCandidateService sysPartCandidateService;

	@Autowired
	private SysPartyEventService sysPartyEventService;

	@ModelAttribute
	public SysPartCandidate get(@RequestParam(required=false) String id) {
		SysPartCandidate entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = sysPartCandidateService.get(id);
		}
		if (entity == null){
			entity = new SysPartCandidate();
		}
		return entity;
	}
	
	@RequiresPermissions("party:sysPartCandidate:view")
	@RequestMapping(value = {"list", ""})
	public String list(SysPartCandidate sysPartCandidate, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SysPartCandidate> page = sysPartCandidateService.findPage(new Page<SysPartCandidate>(request, response), sysPartCandidate); 
		model.addAttribute("page", page);
		System.out.println("R u here ????");
		return "modules/party/sysPartCandidateList";
	}

	@RequiresPermissions("party:sysPartCandidate:view")
	@RequestMapping(value = "form")
	public String form(SysPartCandidate sysPartCandidate, Model model) {
		model.addAttribute("sysPartCandidate", sysPartCandidate);
		return "modules/party/sysPartCandidateForm";
	}

	@RequiresPermissions("party:sysPartCandidate:edit")
	@RequestMapping(value = "save")
	public String save(SysPartCandidate sysPartCandidate, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, sysPartCandidate)){
			return form(sysPartCandidate, model);
		}
		sysPartCandidateService.save(sysPartCandidate);
		addMessage(redirectAttributes, "保存Party成功");
		return "redirect:"+Global.getAdminPath()+"/party/sysPartCandidate/?repage";
	}
	
	@RequiresPermissions("party:sysPartCandidate:edit")
	@RequestMapping(value = "delete")
	public String delete(SysPartCandidate sysPartCandidate, RedirectAttributes redirectAttributes) {
		sysPartCandidateService.delete(sysPartCandidate);
		addMessage(redirectAttributes, "删除Party成功");
		return "redirect:"+Global.getAdminPath()+"/party/sysPartCandidate/?repage";
	}

	@RequestMapping(value = "eTOp")
	public String eventToParty(SysEvent sysEvent, HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("HJello MAN ))))))");
		SysPartCandidate sysPartCandidate = new SysPartCandidate();
		String size;
		if (sysEvent.getId().split(" ").length == 1) {
			size = "";
		}else{
			size = sysEvent.getId().split(" ")[1];
		}

		//Got party according party ID
		List<String> partyID = sysPartyEventService.findPartyID(sysEvent.getId().split(" ")[0]);

		//Got the party name
		Page<SysPartCandidate> page = sysPartCandidateService.findPage(new Page<SysPartCandidate>(request, response), sysPartCandidate);
		Page<SysPartCandidate> resultPage = new Page<SysPartCandidate>();
		List<SysPartCandidate> sysPartCandidates = page.getList();
		List<SysPartCandidate> resultParty = new ArrayList<SysPartCandidate>();
		for (int i = 0; i < sysPartCandidates.size(); i++) {
			System.out.println("????$$$$$");
			for (int j = 0; j < partyID.size(); j++) {
				System.out.println(sysPartCandidates.get(i).getPartyid() + "((((" + partyID.get(j));
				System.out.println("@@@@@@@@@");
				if(sysPartCandidates.get(i).getPartyid().equals(partyID.get(j))){
					System.out.println("@@@@@#####");
					resultParty.add(sysPartCandidates.get(i));
				}
			}
		}

		if (size == "" || size.length() == 0) {
			System.out.println("Size!!!!!1111111");
			model.addAttribute("sizes", resultParty.size());
		}else{
			System.out.println("Size!!!!!22222222");
			System.out.println(size);
			model.addAttribute("sizes", size);
		}

		resultPage.setList(resultParty);
		model.addAttribute("page", resultPage);
		model.addAttribute("eventID", sysEvent.getId().split(" ")[0]);
//		Page<SysEvent> page = sysEventService.findPage(new Page<SysEvent>(request, response), sysEvent);
//		model.addAttribute("page", page);
		System.out.println("************************");
		return "modules/party/eventToParty";
	}
}