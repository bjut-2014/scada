package com.scada.service.impl;

import java.util.List;

import com.scada.dao.FeedbackDao;
import com.scada.domain.Csrm;
import com.scada.domain.Feedback;
import com.scada.service.FeedbackService;

public class FeedbackServiceImpl implements FeedbackService {

	private FeedbackDao feedbackDao;

	public FeedbackDao getFeedbackDao() {
		return feedbackDao;
	}
	public void setFeedbackDao(FeedbackDao feedbackDao) {
		this.feedbackDao = feedbackDao;
	}
	
	
	@Override
	public void save(Feedback feedback) {
		// TODO Auto-generated method stub
		this.feedbackDao.save(feedback);
	}
	@Override
	public List<Feedback> getAll() {
		// TODO Auto-generated method stub
		List<Feedback> feedbacks = feedbackDao.getAll();
		return feedbacks;
	}
	
	
	
	
}