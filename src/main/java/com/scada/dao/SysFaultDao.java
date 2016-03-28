package com.scada.dao;

import java.util.List;
import com.scada.domain.SysFault;

public interface SysFaultDao {

	public void delete(Integer id);
	public List<SysFault> getAll();
	public void save(SysFault sysFault);
	public void update();
	
}
