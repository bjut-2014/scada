package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.SystemSettingDao;
import com.scada.domain.SystemSetting;

public class SystemSettingDaoImpl extends HibernateDaoSupport implements SystemSettingDao {

	

	@Override
	public List<SystemSetting> getAll() {
		// TODO Auto-generated method stub
		
		String hql = "from SystemSetting ss";
		return (List<SystemSetting>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void saveSystemSetting(SystemSetting systemSetting) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(systemSetting);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	
}