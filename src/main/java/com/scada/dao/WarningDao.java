package com.scada.dao;

import java.util.List;

import com.scada.domain.Warning;

public interface WarningDao {
	public void saveWarning(Warning warning);
	
	public void delete(Integer id);
	
	public List<Warning> getAll();
	
	public List<Warning> getWarningByStation(String station);
	
	public Warning getWarningByName(String name);

	public List<Warning> getWarningByState(String station, String state);
	public Warning getWarningById(Integer id);

	public void update(Warning warning);

	public List<Warning> getWarning();
	public List<Warning> getSecure();
}
