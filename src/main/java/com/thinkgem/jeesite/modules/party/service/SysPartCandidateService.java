/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.party.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.party.entity.SysPartCandidate;
import com.thinkgem.jeesite.modules.party.dao.SysPartCandidateDao;

/**
 * partyService
 * @author ZJQ
 * @version 2019-10-29
 */
@Service
@Transactional(readOnly = true)
public class SysPartCandidateService extends CrudService<SysPartCandidateDao, SysPartCandidate> {

	@Autowired
	SysPartCandidateDao sysPartCandidateDao;

	public SysPartCandidate get(String id) {
		return super.get(id);
	}
	
	public List<SysPartCandidate> findList(SysPartCandidate sysPartCandidate) {
		return super.findList(sysPartCandidate);
	}
	
	public Page<SysPartCandidate> findPage(Page<SysPartCandidate> page, SysPartCandidate sysPartCandidate) {
		return super.findPage(page, sysPartCandidate);
	}

	public SysPartCandidate getByPartyId(SysPartCandidate sysPartCandidate){
		System.out.println("Hello world");
		System.out.println(sysPartCandidateDao.getByPartyId(sysPartCandidate).toString() + "Fuck you !!1");
		return sysPartCandidateDao.getByPartyId(sysPartCandidate);
	}

	@Transactional(readOnly = false)
	public void save(SysPartCandidate sysPartCandidate) {
		super.save(sysPartCandidate);
	}
	
	@Transactional(readOnly = false)
	public void delete(SysPartCandidate sysPartCandidate) {
		super.delete(sysPartCandidate);
	}
	
}