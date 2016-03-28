package com.scada.service.impl;

import java.util.List;

import com.scada.dao.UserDao;
import com.scada.domain.User;
import com.scada.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void save(User user) {
		this.userDao.save(user);
	}

	@Override
	public List<User> getAll() {
		return this.userDao.getAll();
	}

	@Override
	public User findUserByLoginName(String loginName) {
		return this.userDao.findUserByLoginName(loginName);
	}

	
	
}
