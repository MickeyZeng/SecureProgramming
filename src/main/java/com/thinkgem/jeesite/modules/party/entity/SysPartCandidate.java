/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.party.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * partyEntity
 * @author ZJQ
 * @version 2019-10-29
 */
public class SysPartCandidate extends DataEntity<SysPartCandidate> {
	
	private static final long serialVersionUID = 1L;
	private String partyid;		// party ID
	private String partyname;		// party Name
	private String partydescription;		// party Description
	
	public SysPartCandidate() {
		super();
	}

	public SysPartCandidate(String id){
		super(id);
	}

	@Length(min=1, max=64, message="party ID长度必须介于 1 和 64 之间")
	public String getPartyid() {
		return partyid;
	}

	public void setPartyid(String partyid) {
		this.partyid = partyid;
	}
	
	@Length(min=1, max=64, message="party Name长度必须介于 1 和 64 之间")
	public String getPartyname() {
		return partyname;
	}

	public void setPartyname(String partyname) {
		this.partyname = partyname;
	}
	
	@Length(min=1, max=200, message="party Description长度必须介于 1 和 200 之间")
	public String getPartydescription() {
		return partydescription;
	}

	public void setPartydescription(String partydescription) {
		this.partydescription = partydescription;
	}
	
}