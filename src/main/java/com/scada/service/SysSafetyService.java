package com.scada.service;

import com.scada.domain.SysSafety;

public interface SysSafetyService {
	
	public void delete(Integer id);
	//public List<SysConfig> getAll();
	public void save(SysSafety sysSafety);
	public void update(SysSafety sysSafety);
	public SysSafety get(Integer id);
}
