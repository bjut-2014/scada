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
import com.scada.domain.Device;
import com.scada.domain.Telemetring;
import com.scada.service.DeviceService;

public class DeviceAjaxAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private DeviceService deviceService;
	private Device device;

	public DeviceService getDeviceService() {
		return deviceService;
	}

	public void setDeviceService(DeviceService deviceService) {
		this.deviceService = deviceService;
	}

	public Device getDevice() {
		return device;
	}

	public void setDevice(Device device) {
		this.device = device;
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
		String station = request.getParameter("station");
  		String state = request.getParameter("state");
  		
  		JSONArray jsonArray = new JSONArray();	  		 
        HttpServletResponse response = ServletActionContext.getResponse();
        List<Device> result;
			if(state.equals("null")){
				result = deviceService.getDeviceByStation(station);
			}else{
				result = deviceService.getDeviceByState(station,state);
			}
			 for(Device d : result){
	            JSONObject jo = new JSONObject();
	            jo.put("device_elec", d.getDevice_elec());
	            jo.put("device_id",d.getDevice_id());
	            jo.put("device_name", d.getDevice_name());
	            jo.put("device_pipletype", d.getDevice_pipletype());
	            jo.put("device_rulename",d.getDevice_rulename());
	            jo.put("device_ruletype", d.getDevice_ruletype());
	            jo.put("device_state", d.getDevice_state());
	            jo.put("device_station",d.getDevice_station());
	            jo.put("device_type", d.getDevice_type());
	            jo.put("Id", d.getId());
	           
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
