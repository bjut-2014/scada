package com.scada.service.impl;

import java.util.List;

import com.scada.dao.SpamIdentifyDao;
import com.scada.domain.SpamIdentify;
import com.scada.service.SpamIdentifyService;

public class SpamIdentifyServiceImpl implements SpamIdentifyService {

	private SpamIdentifyDao spamIdentifyDao;
	
	public SpamIdentifyDao getSpamIdentifyDao() {
		return spamIdentifyDao;
	}

	public void setSpamIdentifyDao(SpamIdentifyDao spamIdentifyDao) {
		this.spamIdentifyDao = spamIdentifyDao;
	}


	public void save(SpamIdentify spamIdentify) {
		this.spamIdentifyDao.save(spamIdentify);
	}

	@Override
	public List<SpamIdentify> getAll() {
		return this.spamIdentifyDao.getAll();
	}

	@Override
	public void delete(Integer id) {
		this.spamIdentifyDao.delete(id);
	}

}
