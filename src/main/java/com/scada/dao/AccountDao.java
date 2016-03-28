package com.scada.dao;

import java.util.List;

import com.scada.domain.Account;

public interface AccountDao {

	public void save(Account account);
	
	public void delete(Integer id);
	
	public List<Account> getAll();

	public void update();
}
