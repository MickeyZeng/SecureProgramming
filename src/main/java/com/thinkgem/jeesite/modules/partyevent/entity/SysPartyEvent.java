/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.partyevent.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * Party-eventEntity
 * @author ZJQ
 * @version 2019-10-29
 */
public class SysPartyEvent extends DataEntity<SysPartyEvent> {
	
	private static final long serialVersionUID = 1L;
	private String partyid;		// party ID
	private String eventid;		// Event ID
	
	public SysPartyEvent() {
		super();
	}

	public SysPartyEvent(String id){
		super(id);
	}

	@Length(min=1, max=64, message="party ID长度必须介于 1 和 64 之间")
	public String getPartyid() {
		return partyid;
	}

	public void setPartyid(String partyid) {
		this.partyid = partyid;
	}
	
	@Length(min=1, max=64, message="Event ID长度必须介于 1 和 64 之间")
	public String getEventid() {
		return eventid;
	}

	public void setEventid(String eventid) {
		this.eventid = eventid;
	}
	
}