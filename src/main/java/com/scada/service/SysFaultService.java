package com.scada.service;

import java.util.List;
import com.scada.domain.SysFault;

public interface SysFaultService {
	public void delete(Integer id);
	public List<SysFault> getAll();
	public void save(SysFault sysFault);
	public void update();
}
