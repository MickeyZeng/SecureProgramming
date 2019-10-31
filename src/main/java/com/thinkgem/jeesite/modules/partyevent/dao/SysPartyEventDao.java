/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.partyevent.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.partyevent.entity.SysPartyEvent;

import java.util.List;

/**
 * Party-eventDAO接口
 * @author ZJQ
 * @version 2019-10-29
 */
@MyBatisDao
public interface SysPartyEventDao extends CrudDao<SysPartyEvent> {
    public List<SysPartyEvent> findPartyID(String eventid);
}