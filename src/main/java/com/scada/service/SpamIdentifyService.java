package com.scada.service;

import java.util.List;

import com.scada.domain.SpamIdentify;

public interface SpamIdentifyService {

	public void save(SpamIdentify spamIdentify);
	public List<SpamIdentify> getAll();
	public void delete(Integer id);
}
