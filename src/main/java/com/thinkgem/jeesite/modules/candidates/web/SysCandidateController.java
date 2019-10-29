/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.candidates.web;

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
import com.thinkgem.jeesite.modules.candidates.entity.SysCandidate;
import com.thinkgem.jeesite.modules.candidates.service.SysCandidateService;

/**
 * CandidatesController
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/candidates/sysCandidate")
public class SysCandidateController extends BaseController {

	@Autowired
	private SysCandidateService sysCandidateService;
	
	@ModelAttribute
	public SysCandidate get(@RequestParam(required=false) String id) {
		SysCandidate entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = sysCandidateService.get(id);
		}
		if (entity == null){
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
		if (!beanValidator(model, sysCandidate)){
			return form(sysCandidate, model);
		}
		sysCandidateService.save(sysCandidate);
		addMessage(redirectAttributes, "保存Candidates成功");
		return "redirect:"+Global.getAdminPath()+"/candidates/sysCandidate/?repage";
	}
	
	@RequiresPermissions("candidates:sysCandidate:edit")
	@RequestMapping(value = "delete")
	public String delete(SysCandidate sysCandidate, RedirectAttributes redirectAttributes) {
		sysCandidateService.delete(sysCandidate);
		addMessage(redirectAttributes, "删除Candidates成功");
		return "redirect:"+Global.getAdminPath()+"/candidates/sysCandidate/?repage";
	}

}