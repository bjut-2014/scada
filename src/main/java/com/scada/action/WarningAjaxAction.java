package com.scada.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.json.JSONArray;
import org.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Warning;
import com.scada.service.WarningService;

public class WarningAjaxAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private WarningService warningService;
	private Warning warning;
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String station = request.getParameter("station");
  		String state = request.getParameter("state");
  		
  		JSONArray jsonArray = new JSONArray();	  		 
        HttpServletResponse response = ServletActionContext.getResponse();
        List<Warning> result;
			if(state.equals("null")){
				result = warningService.getWarningByStation(station);
			}else{
				result = warningService.getWarningByState(station,state);
			}
			 for(Warning d : result){
	            JSONObject jo = new JSONObject();
	            jo.put("device", d.getDevice());
	            jo.put("Id",d.getId());
	            jo.put("Station", d.getStation());
	            jo.put("warning_info", d.getWarning_info());
	            jo.put("warning_level",d.getWarning_level());
	            jo.put("warning_obj", d.getWarning_obj());
	            jo.put("warning_subtype", d.getWarning_subtype());
	            jo.put("warning_time",d.getWarning_time());
	            jo.put("warning_type", d.getWarning_type());
	            
	           
	            jsonArray.put(jo);
	            System.out.println("Telemetring");
	        }
	        try {
	            System.out.println(jsonArray.toString());
	            response.setCharacterEncoding("UTF-8");
	            PrintWriter out = response.getWriter();
	            out.println(jsonArray);
	            out.flush();
	            out.close();
	           
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        return SUCCESS;
	}
	
}
