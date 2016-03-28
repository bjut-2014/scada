package com.scada.service.impl;

import java.util.List;

import com.scada.dao.AccountDao;
import com.scada.domain.Account;
import com.scada.service.AccountService;

public class AccountServiceImpl implements AccountService {

	private AccountDao accountDao;

	
	public AccountDao getAccountDao() {
		return accountDao;
	}
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	@Override
	public void save(Account account) {
		// TODO Auto-generated method stub
		this.accountDao.save(account);
	}
	@Override
	public List<Account> getAll() {
		// TODO Auto-generated method stub
		List<Account> accounts = accountDao.getAll();
		return accounts;
	}
	
	
	
	
}