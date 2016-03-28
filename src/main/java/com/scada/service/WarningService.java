package com.scada.service;

import java.util.List;

import com.scada.domain.Warning;

public interface WarningService {
	public void saveWarning(Warning warning);
	
	public List<Warning> getAll();

	public List<Warning> getWarningByStation(String station);

	public List<Warning> getWarningByState(String station, String state);

	public Object getWarningById(int id);

	public void updateWarning(Warning warning);

	public void delInfoById(int id);

	public List<Warning> getWarning();
	public List<Warning> getSecure();
	
}
