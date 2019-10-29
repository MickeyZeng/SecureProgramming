/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.event.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * eventEntity
 * @author ZJQ
 * @version 2019-10-29
 */
public class SysEvent extends DataEntity<SysEvent> {
	
	private static final long serialVersionUID = 1L;
	private String eventid;		// event ID
	private String eventname;		// Event Name
	private String eventdescription;		// Event Description
	private Date dueDate;		// due time
	
	public SysEvent() {
		super();
	}

	public SysEvent(String id){
		super(id);
	}

	@Length(min=1, max=64, message="event ID长度必须介于 1 和 64 之间")
	public String getEventid() {
		return eventid;
	}

	public void setEventid(String eventid) {
		this.eventid = eventid;
	}
	
	@Length(min=1, max=64, message="Event Name长度必须介于 1 和 64 之间")
	public String getEventname() {
		return eventname;
	}

	public void setEventname(String eventname) {
		this.eventname = eventname;
	}
	
	@Length(min=1, max=200, message="Event Description长度必须介于 1 和 200 之间")
	public String getEventdescription() {
		return eventdescription;
	}

	public void setEventdescription(String eventdescription) {
		this.eventdescription = eventdescription;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="due time不能为空")
	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}
	
}