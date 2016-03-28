package com.scada.dao;

import java.util.List;

import com.scada.domain.MailBlacklist;

public interface MailBlacklistDao {

	public void save(MailBlacklist mailBlacklist);
	public void delete(Integer id);
	public List<MailBlacklist> getAll();
	public void update();
	
}
