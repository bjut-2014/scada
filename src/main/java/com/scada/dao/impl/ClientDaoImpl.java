package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.ClientDao;
import com.scada.domain.Client;

public class ClientDaoImpl extends HibernateDaoSupport implements ClientDao {

	@Override
	public void save(Client client) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(client);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Client> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Client cl";
		return (List<Client>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	

	
	
}