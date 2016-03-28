package com.scada.service;

import java.util.List;

import com.scada.domain.Area;

public interface AreaService {

	public void save(Area area);
	public List<Area> getAll();
	
}
