package com.scada.service.impl;

import java.util.List;

import com.scada.dao.ServiceQualityDao;
import com.scada.domain.Csrm;
import com.scada.domain.ServiceQuality;
import com.scada.service.ServiceQualityService;

public class ServiceQualityServiceImpl implements ServiceQualityService {

	private ServiceQualityDao serviceQualityDao;

	public ServiceQualityDao getServiceQualityDao() {
		return serviceQualityDao;
	}
	public void setServiceQualityDao(ServiceQualityDao serviceQualityDao) {
		this.serviceQualityDao = serviceQualityDao;
	}
	@Override
	public void save(ServiceQuality serviceQuality) {
		// TODO Auto-generated method stub
		this.serviceQualityDao.save(serviceQuality);
	}
	@Override
	public List<ServiceQuality> getAll() {
		// TODO Auto-generated method stub
		List<ServiceQuality> serviceQualitys = serviceQualityDao.getAll();
		return serviceQualitys;
	}
	
	
	
	
	
}