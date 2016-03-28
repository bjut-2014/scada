package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.UserDao;
import com.scada.domain.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> getAll() {
		String hql = "from User";
		return (List<User>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User findUserByLoginName(String loginName) {
		String hql = "from User u where u.loginName='"+loginName+"'";
		User user = null;
		if(this.getHibernateTemplate().find(hql)!=null && this.getHibernateTemplate().find(hql).size()!=0){
			user = (User) this.getHibernateTemplate().find(hql).get(0);
		}
		return user;
	}

}
