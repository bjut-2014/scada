package com.scada.dao;

import java.util.List;

import com.scada.domain.User;

public interface UserDao {

	public void save(User user);
	public void delete(Integer id);
	public List<User> getAll();
	public void update();
	public User findUserByLoginName(String loginName);
}
