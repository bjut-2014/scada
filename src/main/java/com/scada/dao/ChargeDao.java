package com.scada.dao;

import java.util.List;

import com.scada.domain.Charge;

public interface ChargeDao {

	public void save(Charge charge);
	
	public void delete(Integer id);
	
	public List<Charge> getAll();

	public void update();
}
