/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sys.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.sys.entity.SysEvent;

/**
 * eventDAO接口
 * @author ZJQ
 * @version 2019-10-29
 */
@MyBatisDao
public interface SysEventDao extends CrudDao<SysEvent> {
	
}