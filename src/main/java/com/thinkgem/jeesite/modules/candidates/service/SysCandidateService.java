/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.candidates.service;

import java.util.List;

import com.thinkgem.jeesite.modules.party.entity.SysPartCandidate;
import com.thinkgem.jeesite.modules.party.service.SysPartCandidateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.candidates.entity.SysCandidate;
import com.thinkgem.jeesite.modules.candidates.dao.SysCandidateDao;

/**
 * CandidatesService
 * @author ZJQ
 * @version 2019-10-29
 */
@Service
@Transactional(readOnly = true)
public class SysCandidateService extends CrudService<SysCandidateDao, SysCandidate> {

	@Autowired
	SysPartCandidateService sysPartCandidateService;

	public SysCandidate get(String id) {
		return super.get(id);
	}
	
	public List<SysCandidate> findList(SysCandidate sysCandidate) {
		return super.findList(sysCandidate);
	}
	
	public Page<SysCandidate> findPage(Page<SysCandidate> page, SysCandidate sysCandidate) {
		Page<SysCandidate> page1 = super.findPage(page, sysCandidate);
		Page<SysCandidate> resultPage = new Page<SysCandidate>();
		List<SysCandidate> sysCandidates = page1.getList();

		for (int i = 0; i < sysCandidates.size(); i++) {
			System.out.println(sysCandidates.get(i).getPartyid() + "Come on !!!!");
			SysPartCandidate sysPartCandidate = new SysPartCandidate();
			sysPartCandidate.setPartyid(sysCandidates.get(i).getPartyid());

//			sysPartCandidateService.getByPartyId(sysPartCandidate);
			System.out.println(sysPartCandidateService.getByPartyId(sysPartCandidate).getPartyname() + "What the fuck?????");
			sysCandidates.get(i).setPartyid(sysPartCandidateService.getByPartyId(sysPartCandidate).getPartyname());
//			sysCandidates.set(i,sysCandidate);
		}

		resultPage.setList(sysCandidates);

		return resultPage;
//		return super.findPage(page, sysCandidate);
	}
	
	@Transactional(readOnly = false)
	public void save(SysCandidate sysCandidate) {
		super.save(sysCandidate);
	}
	
	@Transactional(readOnly = false)
	public void delete(SysCandidate sysCandidate) {
		super.delete(sysCandidate);
	}
	
}