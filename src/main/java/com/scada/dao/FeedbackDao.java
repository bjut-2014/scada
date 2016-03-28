package com.scada.dao;

import java.util.List;

import com.scada.domain.Feedback;

public interface FeedbackDao {

	public void save(Feedback feedback);
	
	public void delete(Integer id);
	
	public List<Feedback> getAll();

	public void update();
}
