package com.scada.dao;

import java.util.List;

import com.scada.domain.ServiceQuality;

public interface ServiceQualityDao {

	public void save(ServiceQuality serviceQuality);
	
	public void delete(Integer id);
	
	public List<ServiceQuality> getAll();

	public void update();
}
