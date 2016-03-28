package com.scada.dao;

import java.util.List;

import com.scada.domain.Area;

public interface AreaDao {
	
	public void save(Area area);
	public void delete(Integer id);
	public List<Area> getAll();
	public void update();
	
}
