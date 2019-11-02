/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.event.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.party.entity.SysPartCandidate;
import com.thinkgem.jeesite.modules.party.service.SysPartCandidateService;
import com.thinkgem.jeesite.modules.party.web.SysPartCandidateController;
import com.thinkgem.jeesite.modules.partyevent.entity.SysPartyEvent;
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
import com.thinkgem.jeesite.modules.event.entity.SysEvent;
import com.thinkgem.jeesite.modules.event.service.SysEventService;

import java.util.ArrayList;
import java.util.List;

/**
 * eventController
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/event/sysEvent")
public class SysEventController extends BaseController {

	@Autowired
	private SysEventService sysEventService;

	@Autowired
	private SysPartCandidateService sysPartCandidateService;

	@Autowired
	private SysPartyEventService sysPartyEventService;
	
	@ModelAttribute
	public SysEvent get(@RequestParam(required=false) String id) {
		SysEvent entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = sysEventService.get(id);
		}
		if (entity == null){
			entity = new SysEvent();
		}
		return entity;
	}
	
	@RequiresPermissions("event:sysEvent:view")
	@RequestMapping(value = {"list", ""})
	public String list(SysEvent sysEvent, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SysEvent> page = sysEventService.findPage(new Page<SysEvent>(request, response), sysEvent);
		model.addAttribute("page", page);
		System.out.println("Hello");
		return "modules/event/sysEventList";
	}

	@RequiresPermissions("event:sysEvent:view")
	@RequestMapping(value = "form")
	public String form(SysEvent sysEvent, Model model) {
		System.out.println(sysEvent.getId() + "It is ture???????");
		model.addAttribute("sysEvent", sysEvent);
		return "modules/event/sysEventForm";
	}

	@RequiresPermissions("event:sysEvent:edit")
	@RequestMapping(value = "save")
	public String save(SysEvent sysEvent, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, sysEvent)){
			return form(sysEvent, model);
		}
		sysEventService.save(sysEvent);
		addMessage(redirectAttributes, "保存Event成功");
		return "redirect:"+Global.getAdminPath()+"/event/sysEvent/?repage";
	}
	
	@RequiresPermissions("event:sysEvent:edit")
	@RequestMapping(value = "delete")
	public String delete(SysEvent sysEvent, RedirectAttributes redirectAttributes) {
		sysEventService.delete(sysEvent);
		addMessage(redirectAttributes, "删除Event成功");
		return "redirect:"+Global.getAdminPath()+"/event/sysEvent/?repage";
	}

	@RequiresPermissions("event:sysEvent:view")
	@RequestMapping(value = "display")
	public String display(SysEvent sysEvent, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SysEvent> page = sysEventService.findPage(new Page<SysEvent>(request, response), sysEvent);
		model.addAttribute("page", page);
		return "modules/event/sysEventDisplay";
	}

	@RequiresPermissions("event:sysEvent:view")
	@RequestMapping(value = "displayPerson")
	public String displayPerson(SysEvent sysEvent, HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("R u here????");
		Page<SysEvent> page = sysEventService.findPage(new Page<SysEvent>(request, response), sysEvent);
		model.addAttribute("page", page);
		return "modules/event/sysEventDisplayPerson";
	}



}