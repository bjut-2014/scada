package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.AccountDao;
import com.scada.domain.Account;
import com.scada.domain.Client;

public class AccountDaoImpl extends HibernateDaoSupport implements AccountDao {

	@Override
	public void save(Account account) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(account);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Account> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Account ac";
		return (List<Account>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	
	
	
	
	
}