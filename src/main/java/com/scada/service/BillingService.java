package com.scada.service;

import java.util.List;

import com.scada.domain.Billing;

public interface BillingService {

	public void saveBilling(Billing billing);
	
	public List<Billing> getAll();
}
