package com.scada.service;

import java.util.List;

import com.scada.domain.Charge;

public interface ChargeService {

	public void save(Charge charge);
	
	public List<Charge> getAll();
}
