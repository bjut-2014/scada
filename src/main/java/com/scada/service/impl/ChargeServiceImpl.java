package com.scada.service.impl;

import java.util.List;

import com.scada.dao.ChargeDao;
import com.scada.domain.Charge;
import com.scada.service.ChargeService;

public class ChargeServiceImpl implements ChargeService {

	private ChargeDao chargeDao;

	public ChargeDao getChargeDao() {
		return chargeDao;
	}

	public void setChargeDao(ChargeDao chargeDao) {
		this.chargeDao = chargeDao;
	}

	@Override
	public void save(Charge charge) {
		// TODO Auto-generated method stub
		this.chargeDao.save(charge);
	}

	@Override
	public List<Charge> getAll() {
		// TODO Auto-generated method stub
		List<Charge> charges = chargeDao.getAll();
		return charges;
	}

	
	
	
}