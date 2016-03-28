package com.scada.service.impl;

import java.util.List;

import com.scada.dao.BillingDao;
import com.scada.domain.Billing;
import com.scada.service.BillingService;

public class BillingServiceImpl implements BillingService {
	
	private BillingDao billingDao;

	public BillingDao getBillingDao() {
		return billingDao;
	}
	public void setBillingDao(BillingDao billingDao) {
		this.billingDao = billingDao;
	}
	@Override
	public void saveBilling(Billing billing) {
		// TODO Auto-generated method stub
		this.billingDao.saveBilling(billing);
	}

	@Override
	public List<Billing> getAll() {
		// TODO Auto-generated method stub
		
		List<Billing> billings = billingDao.getAll();
		return billings;
	}
	
	
	
}