package com.scada.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;


import org.json.JSONObject;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Pulse;
import com.scada.domain.Telecommand;
import com.scada.domain.Telemetring;
import com.scada.service.PulseService;
import com.scada.service.TelecommandService;
import com.scada.service.TelemetringService;

public class TelemetringAjaxAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	
	private PulseService pulseService;
	private TelemetringService telemetringService;
	private TelecommandService telecommandService;
	public TelemetringService getTelemetringService() {
		return telemetringService;
	}

	public void setTelemetringService(TelemetringService telemetringService) {
		this.telemetringService = telemetringService;
	}

	public TelecommandService getTelecommandService() {
		return telecommandService;
	}

	public void setTelecommandService(TelecommandService telecommandService) {
		this.telecommandService = telecommandService;
	}


	public PulseService getPulseService() {
		return pulseService;
	}

	public void setPulseService(PulseService pulseService) {
		this.pulseService = pulseService;
	}

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
		  	
	  		String tele = request.getParameter("type");
	  		String station = request.getParameter("station");
	  		String state = request.getParameter("state");
	  		System.out.println("test:"+tele+ " "+station+" "+state);
	  		JSONArray jsonArray = new JSONArray();	  		 
	        HttpServletResponse response = ServletActionContext.getResponse();
	        
	  		if(tele.equals("Telemetring")){
	  			List<Telemetring> result;
	  			if(state.equals("null")){
	  				result = telemetringService.getTelemetringByStation(station);
	  			}else{
	  				result = telemetringService.getTelemetringByState(station,state);
	  			}
	  			 for(Telemetring t : result){
	 	            JSONObject jo = new JSONObject();
	 	            jo.put("tele_code", t.getTele_code());
	 	            jo.put("tele_name",t.getTele_name());
	 	            jo.put("tele_station", t.getTele_station());
	 	            jo.put("tele_device", t.getTele_device());
	 	            jo.put("tele_type",t.getTele_type());
	 	            jo.put("tele_int", t.getTele_int());
	 	            jo.put("tele_float", t.getTele_float());
	 	            jo.put("tele_state",t.getTele_state());
	 	            jo.put("tele_basicvalue", t.getTele_basicvalue());
	 	            jo.put("tele_factor", t.getTele_factor());
	 	            jo.put("tele_threshold",t.getTele_threshold());
	 	            jo.put("tele_deadvalue", t.getTele_deadvalue());
	 	            jo.put("tele_filtering", t.getTele_filtering());
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
	  		}else if(tele.equals("Telecommand")){
	  			List<Telecommand> result;
	  			if(state.equals("null")){
	  				result = telecommandService.getTelecommandByStation(station);
	  			}else{
	  				result = telecommandService.getTelecommandByState(station,state);
	  			}
	  			 for(Telecommand t : result){
	 	            JSONObject jo = new JSONObject();
	 	            jo.put("telec_code", t.getTelec_code());
	 	            jo.put("telec_device",t.getTelec_device());
	 	            jo.put("telec_displacement", t.getTelec_displacement());
	 	            jo.put("telec_maxdisplacement", t.getTelec_maxdisplacement());
	 	            jo.put("telec_name",t.getTelec_name());
	 	            jo.put("telec_polarity", t.getTelec_polarity());
	 	            jo.put("telec_state", t.getTelec_state());
	 	            jo.put("telec_station",t.getTelec_station());
	 	            jo.put("telec_type", t.getTelec_type());
	 	            jo.put("telec_value", t.getTelec_value());
	 	            
	 	            jsonArray.put(jo);
	 	            System.out.println("Telecommand");
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
	  		}else if(tele.equals("Pulse")){
	  			List<Pulse> result;
	  			if(state.equals("null")){
	  				result = pulseService.getPulseByStation(station);
	  			}else{
	  				result = pulseService.getPulseByState(station,state);
	  			}
	  			 for(Pulse t : result){
	 	            JSONObject jo = new JSONObject();
	 	            jo.put("pulse_code", t.getPulse_code());
	 	            jo.put("pulse_device",t.getPulse_device());
	 	            jo.put("pulse_factor", t.getPulse_factor());
	 	            jo.put("pulse_float", t.getPulse_float());
	 	            jo.put("pulse_fullcodevalue",t.getPulse_fullcodevalue());
	 	            jo.put("pulse_int", t.getPulse_int());
	 	            jo.put("pulse_name", t.getPulse_name());
	 	            jo.put("pulse_station",t.getPulse_station());
	 	            jo.put("pulse_state",t.getPulse_state());
	 	           	jo.put("pulse_basicvalue",t.getPulse_basicvalue());
	 	          
	 	            jsonArray.put(jo);
	 	            System.out.println("Pulse");
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
	  		}
	  			
	        //将list转化成JSON对象  
	  			
	  		
	       
	       
	        return SUCCESS;
	}
	
}
