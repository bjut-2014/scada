package com.scada.service.impl;

import java.util.List;

import org.hibernate.Query;

import com.scada.dao.SysLogDao;
import com.scada.domain.SysLog;
import com.scada.service.SysLogService;

public class SysLogServiceImpl implements SysLogService {

	private SysLogDao sysLogDao;
	
	public SysLogDao getSysLogDao() {
		return sysLogDao;
	}

	public void setSysLogDao(SysLogDao sysLogDao) {
		this.sysLogDao = sysLogDao;
	}

	@Override
	public void delete(Integer id) {
		this.sysLogDao.delete(id);
	}

	@Override
	public List<SysLog> getAll() {
		return this.sysLogDao.getAll();
	}

	@Override
	public void save(SysLog sysLog) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		this.sysLogDao.deleteAll();
	}

	@Override
	public List<SysLog> findByPage(int pageNo, int pageSize) {
		return sysLogDao.findByPage(pageNo, pageSize);
	}

}
