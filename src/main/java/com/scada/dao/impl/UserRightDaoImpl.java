package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.UserRightDao;
import com.scada.domain.UserRight;

public class UserRightDaoImpl extends HibernateDaoSupport implements UserRightDao {

	@Override
	public void save(UserRight userRight) {
		this.getHibernateTemplate().save(userRight);
	}

	@Override
	public void delete(Integer id) {
		UserRight userRight = this.getHibernateTemplate().get(UserRight.class, id);
		this.getHibernateTemplate().delete(userRight);
	}

	@Override
	public List<UserRight> getAll() {
		String hql = "from UserRight ur order by ur.id desc";
		return (List<UserRight>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UserRight getUserRightById(Integer id) {
		String hql = "from UserRight ur where ur.rightId="+id;
		UserRight userRight = null;
		if(this.getHibernateTemplate().find(hql)!=null && this.getHibernateTemplate().find(hql).size()!=0){
			userRight = (UserRight) this.getHibernateTemplate().find(hql).get(0);
		}
		return userRight;
	}

}
