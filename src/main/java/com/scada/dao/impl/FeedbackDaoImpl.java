package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.FeedbackDao;
import com.scada.domain.Csrm;
import com.scada.domain.Feedback;

public class FeedbackDaoImpl extends HibernateDaoSupport implements FeedbackDao {

	@Override
	public void save(Feedback feedback) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(feedback);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Feedback> getAll() {
		// TODO Auto-generated method stub
		
		String hql = "from Feedback fb";
		return (List<Feedback>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	

	
	
}