package com.scada.service.impl;

import java.util.List;

import com.scada.dao.UserRightDao;
import com.scada.domain.UserRight;
import com.scada.service.UserRightService;

public class UserRightServiceImpl implements UserRightService {

	private UserRightDao userRightDao;
	
	public UserRightDao getUserRightDao() {
		return userRightDao;
	}

	public void setUserRightDao(UserRightDao userRightDao) {
		this.userRightDao = userRightDao;
	}

	@Override
	public void save(UserRight userRight) {
		this.userRightDao.save(userRight);
	}

	@Override
	public List<UserRight> getAll() {
		return this.userRightDao.getAll();
	}

	@Override
	public UserRight findUserRightById(Integer id) {
		return this.userRightDao.getUserRightById(id);
	}

	@Override
	public void delete(Integer id) {
		this.userRightDao.delete(id);
	}

	
	
}
