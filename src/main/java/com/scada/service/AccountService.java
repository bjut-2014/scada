package com.scada.service;

import java.util.List;

import com.scada.domain.Account;
public interface AccountService {

	public void save(Account account);
	
	public List<Account> getAll();
}
