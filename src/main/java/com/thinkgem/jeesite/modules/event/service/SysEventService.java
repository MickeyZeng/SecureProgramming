/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.event.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.event.entity.SysEvent;
import com.thinkgem.jeesite.modules.event.dao.SysEventDao;

/**
 * eventService
 * @author ZJQ
 * @version 2019-10-29
 */
@Service
@Transactional(readOnly = true)
public class SysEventService extends CrudService<SysEventDao, SysEvent> {

	public SysEvent get(String id) {
		return super.get(id);
	}
	
	public List<SysEvent> findList(SysEvent sysEvent) {
		return super.findList(sysEvent);
	}
	
	public Page<SysEvent> findPage(Page<SysEvent> page, SysEvent sysEvent) {
		return super.findPage(page, sysEvent);
	}
	
	@Transactional(readOnly = false)
	public void save(SysEvent sysEvent) {
		super.save(sysEvent);
	}
	
	@Transactional(readOnly = false)
	public void delete(SysEvent sysEvent) {
		super.delete(sysEvent);
	}
	
}