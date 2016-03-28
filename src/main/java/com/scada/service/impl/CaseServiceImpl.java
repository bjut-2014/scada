package com.scada.service.impl;

import java.util.List;

import com.scada.dao.CaseDao;
import com.scada.domain.EleCase;
import com.scada.service.CaseService;

public class CaseServiceImpl implements CaseService {
	private CaseDao caseDao;

	public CaseDao getCaseDao() {
		return caseDao;
	}

	public void setCaseDao(CaseDao caseDao) {
		this.caseDao = caseDao;
	}

	@Override
	public void saveCase(EleCase Case) {
		// TODO Auto-generated method stub
		this.caseDao.saveCase(Case);
	}

	@Override
	public List<EleCase> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateCase(EleCase Case) {
		// TODO Auto-generated method stub
		caseDao.update(Case);
	}

	@Override
	public void delInfoById(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public EleCase getCaseById(int id) {
		// TODO Auto-generated method stub
		return caseDao.getCaseById(id);
	}

	@Override
	public List<EleCase> getCaseByType(String type) {
		// TODO Auto-generated method stub
		System.out.println(caseDao.getCaseByType(type).size());
		return (List<EleCase>)caseDao.getCaseByType(type);
	}

}
