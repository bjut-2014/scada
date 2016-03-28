package com.scada.dao;

import java.util.List;

import com.scada.domain.UserRight;

public interface UserRightDao {

	public void save(UserRight userRight);
	public void delete(Integer id);
	public List<UserRight> getAll();
	public void update();
	public UserRight getUserRightById(Integer id);
}
