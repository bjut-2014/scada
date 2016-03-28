package com.scada.service;

import java.util.List;

import com.scada.domain.Csrm;

public interface CsrmService {

	public void save(Csrm csrm);
	
	public List<Csrm> getAll();
}
