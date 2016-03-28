package com.scada.dao;

import java.util.List;

import com.scada.domain.BusinessOperation;

public interface BusinessOperationDao {

	public void saveBusinessOperation(BusinessOperation businessOperation);
	
	public void delete(Integer id);
	
	public List<BusinessOperation> getAll();
	
	public void update();
	
	public BusinessOperation getBusinessOperationByName(String name);
	
}
