/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.party.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.party.entity.SysPartCandidate;

/**
 * partyDAO接口
 * @author ZJQ
 * @version 2019-10-29
 */
@MyBatisDao
public interface SysPartCandidateDao extends CrudDao<SysPartCandidate> {
    public SysPartCandidate getByPartyId(SysPartCandidate sysPartCandidate);


}