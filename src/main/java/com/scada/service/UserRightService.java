package com.scada.service;

import java.util.List;

import com.scada.domain.UserRight;;

public interface UserRightService {
	public void save(UserRight userRight);
	public List<UserRight> getAll();
	public UserRight findUserRightById(Integer id);
	public void delete(Integer id);
}
