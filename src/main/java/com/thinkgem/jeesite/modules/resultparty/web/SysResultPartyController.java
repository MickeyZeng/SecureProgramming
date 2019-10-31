/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.resultparty.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

/**
 * resultPartyController
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/resultparty/sysResultParty")
public class SysResultPartyController extends BaseController {

	@Autowired
	private SysResultPartyService sysResultPartyService;
	
	@ModelAttribute
	public SysResultParty get(@RequestParam(required=false) String id) {
		SysResultParty entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = sysResultPartyService.get(id);
		}
		if (entity == null){
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

	@RequiresPermissions("resultparty:sysResultParty:view")
	@RequestMapping(value = "form")
	public String form(SysResultParty sysResultParty, Model model) {
		model.addAttribute("sysResultParty", sysResultParty);
		return "modules/resultparty/sysResultPartyForm";
	}

	@RequiresPermissions("resultparty:sysResultParty:edit")
	@RequestMapping(value = "save")
	public String save(SysResultParty sysResultParty, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, sysResultParty)){
			return form(sysResultParty, model);
		}
		sysResultPartyService.save(sysResultParty);
		addMessage(redirectAttributes, "保存resultParty成功");
		return "redirect:"+Global.getAdminPath()+"/resultparty/sysResultParty/?repage";
	}
	
	@RequiresPermissions("resultparty:sysResultParty:edit")
	@RequestMapping(value = "delete")
	public String delete(SysResultParty sysResultParty, RedirectAttributes redirectAttributes) {
		sysResultPartyService.delete(sysResultParty);
		addMessage(redirectAttributes, "删除resultParty成功");
		return "redirect:"+Global.getAdminPath()+"/resultparty/sysResultParty/?repage";
	}


	@RequestMapping(value = "vote")
	public String vote(SysResultParty sysResultParty, Model model, RedirectAttributes redirectAttributes) {
		String partyID = sysResultParty.getId().split(" ")[0];
		String eventID = sysResultParty.getId().split(" ")[1];

		sysResultParty.setId(partyID+eventID);
		sysResultParty.setEventid(eventID);
		sysResultParty.setPartyid(partyID);
		sysResultParty.setIsNewRecord(true);

		//For test
		if(sysResultPartyService.get(partyID+eventID) == null){
			sysResultParty.setResult("1");
//		System.out.println(partyID + "%%%%%%%%%%%%%%%%" + eventID);
			sysResultPartyService.save(sysResultParty);
		}else{
			addMessage(redirectAttributes, "You cannot vote same party.");
		}

//		addMessage(redirectAttributes, "保存resultParty成功");
		return "redirect:"+Global.getAdminPath()+"/event/sysEvent/display";
	}
}