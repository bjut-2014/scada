package com.scada.service.impl;

import java.util.List;

import com.scada.dao.MailBlacklistDao;
import com.scada.domain.MailBlacklist;
import com.scada.service.MailBlacklistService;

public class MailBlacklistServiceImpl implements MailBlacklistService {

	private MailBlacklistDao mailBlacklistDao;
	
	@Override
	public void save(MailBlacklist mailBlacklist) {
		mailBlacklistDao.save(mailBlacklist);
	}

	@Override
	public void delete(Integer id) {
		mailBlacklistDao.delete(id);
	}

	@Override
	public List<MailBlacklist> getAll() {
		return mailBlacklistDao.getAll();
	}

	@Override
	public void update() {
	}

	public MailBlacklistDao getMailBlacklistDao() {
		return mailBlacklistDao;
	}

	public void setMailBlacklistDao(MailBlacklistDao mailBlacklistDao) {
		this.mailBlacklistDao = mailBlacklistDao;
	}
	

}
