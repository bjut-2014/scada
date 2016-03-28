package com.scada.dao.impl;

import java.util.List;

import org.hibernate.FlushMode;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.PublishDao;
import com.scada.domain.Publish;

public class PublishDaoImpl extends HibernateDaoSupport implements PublishDao {

	@Override
	public void savePublish(Publish publish) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(publish);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		String hql = "from Publish p where p.id = "+id;
		Publish publish = getPublishById(id);
		System.out.println("deldete:"+publish.getId());
		this.getHibernateTemplate().delete(publish);
	}

	@Override
	public void modify(Publish Publish) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Publish> getAll() {
		// TODO Auto-generated method stub
		String hql = " from Publish p";
		return (List<Publish>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public Publish getPublishById(int id) {
		// TODO Auto-generated method stub
		String hql = "from Publish p where p.id = "+id;
		return (Publish) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public Publish getPublishByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Publish> getPublishByStation(String station) {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	public void update(Publish publish) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(publish);
	}

	

}
