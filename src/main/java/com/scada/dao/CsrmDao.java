package com.scada.dao;

import java.util.List;

import com.scada.domain.Csrm;

public interface CsrmDao {

	public void save(Csrm csrm);
	
	public void delete(Integer id);
	
	public List<Csrm> getAll();

	public void update();
}
