package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.AreaDao;
import com.scada.domain.Area;

public class AreaDaoImpl extends HibernateDaoSupport implements AreaDao {



	@Override
	public List<Area> getAll() {
		// TODO Auto-generated method stub
		
		String hql = "from Area am";
		return (List<Area>) this.getHibernateTemplate().find(hql);
	}
	
	
	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void save(Area area) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(area);
	}


	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}
	
	
}