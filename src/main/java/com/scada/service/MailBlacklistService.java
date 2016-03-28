package com.scada.service;

import java.util.List;

import com.scada.domain.MailBlacklist;

public interface MailBlacklistService {

	public void save(MailBlacklist mailBlacklist);
	public void delete(Integer id);
	public List<MailBlacklist> getAll();
	public void update();
	
}
