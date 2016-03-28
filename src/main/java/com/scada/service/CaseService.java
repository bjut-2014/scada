package com.scada.service;

import java.util.List;

import com.scada.domain.EleCase;

public interface CaseService {
public void saveCase(EleCase Case);
	
	public List<EleCase> getAll();
	
	public void updateCase(EleCase Case);
	
	public void delInfoById(int id); 
	
	public EleCase getCaseById(int id);

	public List<EleCase> getCaseByType(String type);
}
