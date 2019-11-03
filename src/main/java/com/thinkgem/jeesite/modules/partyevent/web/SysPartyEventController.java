/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.partyevent.web;

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
import com.thinkgem.jeesite.modules.partyevent.entity.SysPartyEvent;
import com.thinkgem.jeesite.modules.partyevent.service.SysPartyEventService;

/**
 * Party-eventController
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/partyevent/sysPartyEvent")
public class SysPartyEventController extends BaseController {

	@Autowired
	private SysPartyEventService sysPartyEventService;
	
	@ModelAttribute
	public SysPartyEvent get(@RequestParam(required=false) String id) {
		SysPartyEvent entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = sysPartyEventService.get(id);
		}
		if (entity == null){
			entity = new SysPartyEvent();
		}
		return entity;
	}
	
	@RequiresPermissions("partyevent:sysPartyEvent:view")
	@RequestMapping(value = {"list", ""})
	public String list(SysPartyEvent sysPartyEvent, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SysPartyEvent> page = sysPartyEventService.findPage(new Page<SysPartyEvent>(request, response), sysPartyEvent); 
		model.addAttribute("page", page);
		return "modules/partyevent/sysPartyEventList";
	}

	@RequiresPermissions("partyevent:sysPartyEvent:view")
	@RequestMapping(value = "form")
	public String form(SysPartyEvent sysPartyEvent, Model model) {
		System.out.println(sysPartyEvent.getEventid() + "AM I right?????");
		System.out.println(sysPartyEvent.getId() + "TEST man !!!");
		model.addAttribute("sysPartyEvent", sysPartyEvent);
		return "modules/partyevent/sysPartyEventForm";
	}

	/**
	 * In order to save the data in the databases
	 * */
	@RequiresPermissions("partyevent:sysPartyEvent:edit")
	@RequestMapping(value = "save")
	public String save(SysPartyEvent sysPartyEvent, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, sysPartyEvent)){
			return form(sysPartyEvent, model);
		}
		sysPartyEvent.setIsNewRecord(true);
		sysPartyEvent.setId(sysPartyEvent.getEventid() + sysPartyEvent.getPartyid());
		sysPartyEventService.save(sysPartyEvent);
		addMessage(redirectAttributes, "Save Party-event");
//		return "redirect:"+Global.getAdminPath()+"/partyevent/sysPartyEvent/?repage";
		return "redirect:" +Global.getAdminPath()+ "/event/sysEvent";
	}
	
	@RequiresPermissions("partyevent:sysPartyEvent:edit")
	@RequestMapping(value = "delete")
	public String delete(SysPartyEvent sysPartyEvent, RedirectAttributes redirectAttributes) {
		sysPartyEventService.delete(sysPartyEvent);
		addMessage(redirectAttributes, "删除Party-event成功");
		return "redirect:"+Global.getAdminPath()+"/partyevent/sysPartyEvent/?repage";
	}

}