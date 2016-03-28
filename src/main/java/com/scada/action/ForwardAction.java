package com.scada.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import com.opensymphony.xwork2.ActionSupport;


public class ForwardAction extends ActionSupport implements RequestAware{

	private static final long serialVersionUID = 1L;

    
    public String Forward(){  
	    return "forwardMeet";
	}


	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		
	}
        	
}
