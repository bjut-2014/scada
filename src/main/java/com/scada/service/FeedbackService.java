package com.scada.service;

import java.util.List;

import com.scada.domain.Feedback;

public interface FeedbackService {

	public void save(Feedback feedback);
	
	public List<Feedback> getAll();
}
