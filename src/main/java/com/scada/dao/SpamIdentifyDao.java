package com.scada.dao;

import java.util.List;

import com.scada.domain.SpamIdentify;

public interface SpamIdentifyDao {
	
	public void save(SpamIdentify spamIdentify);
	public void delete(Integer id);
	public List<SpamIdentify> getAll();
	public void update();
	
}
