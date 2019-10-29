/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.partyevent.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.partyevent.entity.SysPartyEvent;
import com.thinkgem.jeesite.modules.partyevent.dao.SysPartyEventDao;

/**
 * Party-eventService
 * @author ZJQ
 * @version 2019-10-29
 */
@Service
@Transactional(readOnly = true)
public class SysPartyEventService extends CrudService<SysPartyEventDao, SysPartyEvent> {

	public SysPartyEvent get(String id) {
		return super.get(id);
	}
	
	public List<SysPartyEvent> findList(SysPartyEvent sysPartyEvent) {
		return super.findList(sysPartyEvent);
	}
	
	public Page<SysPartyEvent> findPage(Page<SysPartyEvent> page, SysPartyEvent sysPartyEvent) {
		return super.findPage(page, sysPartyEvent);
	}
	
	@Transactional(readOnly = false)
	public void save(SysPartyEvent sysPartyEvent) {
		super.save(sysPartyEvent);
	}
	
	@Transactional(readOnly = false)
	public void delete(SysPartyEvent sysPartyEvent) {
		super.delete(sysPartyEvent);
	}
	
}