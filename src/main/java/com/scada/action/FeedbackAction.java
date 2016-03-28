package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Feedback;
import com.scada.service.FeedbackService;
public class FeedbackAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	


	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private FeedbackService feedbackService;
	
	public FeedbackService getFeedbackService() {
		return feedbackService;
	}

	public void setFeedbackService(FeedbackService feedbackService) {
		this.feedbackService = feedbackService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String home(){
		request.setAttribute("feedback", feedbackService.getAll());
		return "home";
	}
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		Feedback feedback = new Feedback();
		feedback.setType(request.getParameter("type"));
		feedback.setName(request.getParameter("name"));
		feedback.setFeedbackname(request.getParameter("feedbackname"));
		feedback.setDate(request.getParameter("date"));
		feedback.setContactway(request.getParameter("contactway"));
		feedback.setWay(request.getParameter("way"));
		feedback.setContent(request.getParameter("content"));
		feedback.setState(request.getParameter("state"));
		feedback.setArea(request.getParameter("area"));
		feedback.setChief(request.getParameter("chief"));
		feedback.setRemark(request.getParameter("remark"));
		feedbackService.save(feedback);
		
		return "save";
	}
	
	public String execute() throws Exception {
		
		return super.execute();
	}
	

	
}










