package com.scada.dao;

import com.scada.domain.SysSafety;

public interface SysSafetyDao {
	public void save(SysSafety sysSafety);
	public void delete(Integer id);
//	public List<SysSafety> getAll();
	public void update(SysSafety sysSafety);
	public SysSafety get(Integer id);
}
