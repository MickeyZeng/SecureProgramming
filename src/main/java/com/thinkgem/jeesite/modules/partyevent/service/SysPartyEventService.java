/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.partyevent.service;

import java.util.ArrayList;
import java.util.List;

import com.thinkgem.jeesite.modules.party.entity.SysPartCandidate;
import org.springframework.beans.factory.annotation.Autowired;
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

	@Autowired
	SysPartyEventDao sysPartyEventDao;

	public SysPartyEvent get(String id) {
		return super.get(id);
	}
	
	public List<SysPartyEvent> findList(SysPartyEvent sysPartyEvent) {
		return super.findList(sysPartyEvent);
	}
	
	public Page<SysPartyEvent> findPage(Page<SysPartyEvent> page, SysPartyEvent sysPartyEvent) {
		return super.findPage(page, sysPartyEvent);
	}

	public List<String> findPartyID(String partyId){
		List<SysPartyEvent> sysPartyEvents = sysPartyEventDao.findPartyID(partyId);
		List<String> resultId = new ArrayList<String>();
		System.out.println(sysPartyEvents.size() + "Did u get it man ???");
		for (int i = 0; i < sysPartyEvents.size(); i++) {
			resultId.add(sysPartyEvents.get(i).getPartyid());
		}
		return resultId;
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