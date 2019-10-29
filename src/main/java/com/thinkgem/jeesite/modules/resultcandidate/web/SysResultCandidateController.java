/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.resultcandidate.web;

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
import com.thinkgem.jeesite.modules.resultcandidate.entity.SysResultCandidate;
import com.thinkgem.jeesite.modules.resultcandidate.service.SysResultCandidateService;

/**
 * resultCandidateController
 * @author ZJQ
 * @version 2019-10-29
 */
@Controller
@RequestMapping(value = "${adminPath}/resultcandidate/sysResultCandidate")
public class SysResultCandidateController extends BaseController {

	@Autowired
	private SysResultCandidateService sysResultCandidateService;
	
	@ModelAttribute
	public SysResultCandidate get(@RequestParam(required=false) String id) {
		SysResultCandidate entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = sysResultCandidateService.get(id);
		}
		if (entity == null){
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

	@RequiresPermissions("resultcandidate:sysResultCandidate:view")
	@RequestMapping(value = "form")
	public String form(SysResultCandidate sysResultCandidate, Model model) {
		model.addAttribute("sysResultCandidate", sysResultCandidate);
		return "modules/resultcandidate/sysResultCandidateForm";
	}

	@RequiresPermissions("resultcandidate:sysResultCandidate:edit")
	@RequestMapping(value = "save")
	public String save(SysResultCandidate sysResultCandidate, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, sysResultCandidate)){
			return form(sysResultCandidate, model);
		}
		sysResultCandidateService.save(sysResultCandidate);
		addMessage(redirectAttributes, "保存resultCandidate成功");
		return "redirect:"+Global.getAdminPath()+"/resultcandidate/sysResultCandidate/?repage";
	}
	
	@RequiresPermissions("resultcandidate:sysResultCandidate:edit")
	@RequestMapping(value = "delete")
	public String delete(SysResultCandidate sysResultCandidate, RedirectAttributes redirectAttributes) {
		sysResultCandidateService.delete(sysResultCandidate);
		addMessage(redirectAttributes, "删除resultCandidate成功");
		return "redirect:"+Global.getAdminPath()+"/resultcandidate/sysResultCandidate/?repage";
	}

}