package com.scada.service;

import java.util.List;

import com.scada.domain.SysLog;

public interface SysLogService {
	public void delete(Integer id);
	public List<SysLog> getAll();
	public void save(SysLog sysLog);
	public void update();
	public void deleteAll();
	public List<SysLog> findByPage(int pageNo,int pageSize);
}
