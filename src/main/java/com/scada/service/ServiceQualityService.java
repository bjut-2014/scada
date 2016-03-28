package com.scada.service;

import java.util.List;

import com.scada.domain.ServiceQuality;

public interface ServiceQualityService {

	public void save(ServiceQuality serviceQuality);
	
	public List<ServiceQuality> getAll();
}
