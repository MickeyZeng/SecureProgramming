/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.candidates.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * CandidatesEntity
 * @author ZJQ
 * @version 2019-10-29
 */
public class SysCandidate extends DataEntity<SysCandidate> {
	
	private static final long serialVersionUID = 1L;
	private String candidateid;		// Candidate ID
	private String candidatename;		// Candidate Name
	private String partyid;		// party ID
	
	public SysCandidate() {
		super();
	}

	public SysCandidate(String id){
		super(id);
	}

	@Length(min=1, max=64, message="Candidate ID长度必须介于 1 和 64 之间")
	public String getCandidateid() {
		return candidateid;
	}

	public void setCandidateid(String candidateid) {
		this.candidateid = candidateid;
	}
	
	@Length(min=1, max=64, message="Candidate Name长度必须介于 1 和 64 之间")
	public String getCandidatename() {
		return candidatename;
	}

	public void setCandidatename(String candidatename) {
		this.candidatename = candidatename;
	}
	
	@Length(min=1, max=64, message="party ID长度必须介于 1 和 64 之间")
	public String getPartyid() {
		return partyid;
	}

	public void setPartyid(String partyid) {
		this.partyid = partyid;
	}
	
}