package com.scada.service;

import java.util.List;

import com.scada.domain.BusinessOperation;

public interface BusinessOperationService {

	public void saveBusinessOperation(BusinessOperation businessOperation);
	
	public List<BusinessOperation> getAll();
}

