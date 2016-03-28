package com.scada.dao;

import java.util.List;

import com.scada.domain.EleCase;

public interface CaseDao {
	public void saveCase(EleCase Case);
	
	public void delete(Integer id);
	
	public List<EleCase> getAll();
	
	public List<EleCase> getCaseByType(String type);
	
	public EleCase getCaseByName(String name);

	public List<EleCase> getCaseByState(String station, String state);
	public EleCase getCaseById(Integer id);

	public void update(EleCase Case);
}
