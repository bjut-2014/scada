package com.scada.dao;

import java.util.List;

import com.scada.domain.SysLog;

public interface SysLogDao {
	
	public void delete(Integer id);
	public void deleteAll();
	public List<SysLog> getAll();
	public void save(SysLog sysLog);
	public void update();
	public List<SysLog> findByPage(int pageNo,int pageSize);
}
