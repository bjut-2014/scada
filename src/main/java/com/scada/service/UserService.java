package com.scada.service;

import java.util.List;

import com.scada.domain.User;

public interface UserService {
	public void save(User user);
	public List<User> getAll();
	public User findUserByLoginName(String loginName);
}
