package com.scada.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Telemetring;
import com.scada.domain.User;
import com.scada.service.PulseService;
import com.scada.service.TelecommandService;
import com.scada.service.TelemetringService;

public class TelemetringAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	
	private PulseService pulseService;
	private Telemetring telemetring;
	public Telemetring getTelemetring() {
		return telemetring;
	}
	public void setTelemetring(Telemetring telemetring) {
		this.telemetring = telemetring;
	}
	public PulseService getPulseService() {
		return pulseService;
	}
	public void setPulseService(PulseService pulseService) {
		this.pulseService = pulseService;
	}
	private TelemetringService telemetringService;
	private TelecommandService telecommandService;
	
	public TelecommandService getTelecommandService() {
		return telecommandService;
	}
	public void setTelecommandService(TelecommandService telecommandService) {
		this.telecommandService = telecommandService;
	}
	public TelemetringService getTelemetringService() {
		return telemetringService;
	}
	public void setTelemetringService(TelemetringService telemetringService) {
		this.telemetringService = telemetringService;
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
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		String tele = request.getParameter("type");
		String station = request.getParameter("Station");
		System.out.println("test:"+tele+ " "+station);
		if(tele.equals("Telemetring")){
			request.setAttribute("Telemetrings", telemetringService.getTelemetringByStation(station));
			return "show";
		}
		else if(tele.equals("Telecommand")){		
			request.setAttribute("Telecommands", telecommandService.getTelecommandByStation(station));
			return "save";
		}
		else if(tele.equals("Pulse")){
			System.out.println(pulseService);
			System.out.println(telecommandService);
		//	System.out.println("Pulse:"+pulseService.getAll().get(0).getPulse_station());
			request.setAttribute("Pulse", pulseService.getAll());	
			return "pulse";
		}
		else{
			return show();
		}	
	}
	
	public String show(){
		request.setAttribute("Telemetrings01", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ01"));
		request.setAttribute("Telemetrings02", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ02"));
		request.setAttribute("Telemetrings03", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ03"));
		request.setAttribute("Telemetrings04", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ04"));
		request.setAttribute("Telemetrings05", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ05"));
		request.setAttribute("Telemetrings06", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ06"));
		request.setAttribute("Telemetrings07", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ07"));
		request.setAttribute("Telemetrings08", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ08"));
		request.setAttribute("Telemetrings09", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ09"));
		request.setAttribute("Telemetrings10", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ10"));
		request.setAttribute("Telemetrings11", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ11"));
		request.setAttribute("Telemetrings12", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ12"));
		
		return "show";
	}

	public String option(){
		request.setAttribute("Telemetrings01", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ01"));
		request.setAttribute("Telemetrings02", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ02"));
		request.setAttribute("Telemetrings03", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ03"));
		request.setAttribute("Telemetrings04", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ04"));
		request.setAttribute("Telemetrings05", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ05"));
		request.setAttribute("Telemetrings06", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ06"));
		request.setAttribute("Telemetrings07", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ07"));
		request.setAttribute("Telemetrings08", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ08"));
		request.setAttribute("Telemetrings09", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ09"));
		request.setAttribute("Telemetrings10", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ10"));
		request.setAttribute("Telemetrings11", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ11"));
		request.setAttribute("Telemetrings12", telemetringService.getTelemetringByStation("≤‚ ‘≥ß’æ12"));
		return "option";
	}
	public String pulse() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		String tele = request.getParameter("type");
		String station = request.getParameter("Station");
		System.out.println("test:"+tele+ " "+station);
		return "pulse";
	}
	
	public String edit(){
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		request.setAttribute("telemetring",telemetringService.getTelemetringById(id));
		return "edit";
	}
	public String update(){
		User user = (User) request.getSession().getAttribute("global_user");
		
		
		telemetringService.updateTelemetring(telemetring);
		show();
		return "update";
	}
	
}
