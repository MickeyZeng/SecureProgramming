/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.resultparty.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.resultparty.entity.SysResultParty;
import com.thinkgem.jeesite.modules.resultparty.dao.SysResultPartyDao;

/**
 * resultPartyService
 * @author ZJQ
 * @version 2019-10-29
 */
@Service
@Transactional(readOnly = true)
public class SysResultPartyService extends CrudService<SysResultPartyDao, SysResultParty> {

	public SysResultParty get(String id) {
		return super.get(id);
	}
	
	public List<SysResultParty> findList(SysResultParty sysResultParty) {
		return super.findList(sysResultParty);
	}
	
	public Page<SysResultParty> findPage(Page<SysResultParty> page, SysResultParty sysResultParty) {
		return super.findPage(page, sysResultParty);
	}
	
	@Transactional(readOnly = false)
	public void save(SysResultParty sysResultParty) {
		super.save(sysResultParty);
	}
	
	@Transactional(readOnly = false)
	public void delete(SysResultParty sysResultParty) {
		super.delete(sysResultParty);
	}
	
}