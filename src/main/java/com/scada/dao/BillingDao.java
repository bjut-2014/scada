package com.scada.dao;

import java.util.List;

import com.scada.domain.Billing;;

public interface BillingDao {

	public void saveBilling(Billing billing);
	
	public void delete(Integer id);
	
	public List<Billing> getAll();
	
	
}