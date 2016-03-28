package com.scada.service.impl;

import java.util.List;

import com.scada.dao.AreaDao;
import com.scada.domain.Area;
import com.scada.service.AreaService;

public class AreaServiceImpl implements AreaService {

	private AreaDao areaDao;
	
	public AreaDao getAreaDao() {
		return areaDao;
	}
	public void setAreaDao(AreaDao areaDao) {
		this.areaDao = areaDao;
	}

	@Override
	public void save(Area area) {
		// TODO Auto-generated method stub
		this.areaDao.save(area);
	}

	@Override
	public List<Area> getAll() {
		// TODO Auto-generated method stub
		
		List<Area> areas = areaDao.getAll();
		return areas;
	}

	
}