/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.party.web;

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
import com.thinkgem.jeesite.modules.party.entity.SysPartCandidate;
import com.thinkgem.jeesite.modules.party.service.SysPartCandidateService;

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

}