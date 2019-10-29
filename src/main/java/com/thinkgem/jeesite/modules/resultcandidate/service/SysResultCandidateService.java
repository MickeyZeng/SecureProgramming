/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.resultcandidate.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.resultcandidate.entity.SysResultCandidate;
import com.thinkgem.jeesite.modules.resultcandidate.dao.SysResultCandidateDao;

/**
 * resultCandidateService
 * @author ZJQ
 * @version 2019-10-29
 */
@Service
@Transactional(readOnly = true)
public class SysResultCandidateService extends CrudService<SysResultCandidateDao, SysResultCandidate> {

	public SysResultCandidate get(String id) {
		return super.get(id);
	}
	
	public List<SysResultCandidate> findList(SysResultCandidate sysResultCandidate) {
		return super.findList(sysResultCandidate);
	}
	
	public Page<SysResultCandidate> findPage(Page<SysResultCandidate> page, SysResultCandidate sysResultCandidate) {
		return super.findPage(page, sysResultCandidate);
	}
	
	@Transactional(readOnly = false)
	public void save(SysResultCandidate sysResultCandidate) {
		super.save(sysResultCandidate);
	}
	
	@Transactional(readOnly = false)
	public void delete(SysResultCandidate sysResultCandidate) {
		super.delete(sysResultCandidate);
	}
	
}