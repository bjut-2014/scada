package com.scada.service.impl;

import java.util.List;


import com.scada.dao.BusinessOperationDao;
import com.scada.domain.BusinessOperation;
import com.scada.service.BusinessOperationService;

public class BusinessOperationServiceImpl implements BusinessOperationService{

	private BusinessOperationDao businessOperationDao;

	public BusinessOperationDao getBusinessOperationDao() {
		return businessOperationDao;
	}
	public void setBusinessOperationDao(BusinessOperationDao businessOperationDao) {
		this.businessOperationDao = businessOperationDao;
	}

	@Override
	public void saveBusinessOperation(BusinessOperation businessOperation) {
		this.businessOperationDao.saveBusinessOperation(businessOperation);
	}
	@Override
	public List<BusinessOperation> getAll() {
		List<BusinessOperation> businessOperation = businessOperationDao.getAll();
		return businessOperation;
	}
	
	
}