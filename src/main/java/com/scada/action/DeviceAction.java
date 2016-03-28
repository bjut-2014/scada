package com.scada.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Device;
import com.scada.domain.EleCase;
import com.scada.domain.User;
import com.scada.service.CaseService;
import com.scada.service.DeviceService;
import com.scada.service.DocumentURLService;

public class DeviceAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private DeviceService deviceService;
	private Device device;
	private CaseService caseService;
	private EleCase elecase;
	
	
	public CaseService getCaseService() {
		return caseService;
	}
	public void setCaseService(CaseService caseService) {
		this.caseService = caseService;
	}
	public EleCase getElecase() {
		return elecase;
	}
	public void setElecase(EleCase elecase) {
		this.elecase = elecase;
	}
	public Device getDevice() {
		return device;
	}
	public void setDevice(Device device) {
		this.device = device;
	}
	public DeviceService getDeviceService() {
		return deviceService;
	}
	public void setDeviceService(DeviceService deviceService) {
		this.deviceService = deviceService;
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
	
	public String show(){
		request.setAttribute("Devices", deviceService.getAll());		
		return "show";
	}
	public String option(){
		request.setAttribute("Devices", deviceService.getAll());		
		return "option";
	}
	public String edit(){
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		request.setAttribute("device",deviceService.getDeviceById(id));
		return "edit";
	}
	public String update(){
		User user = (User) request.getSession().getAttribute("global_user");
		Device device1 = deviceService.getDeviceById(device.getId());
		if(device.equals(device1)){
			System.out.println("Device no change");
		}else{
			deviceService.updateDevice(device);
			elecase = new EleCase();
			elecase.setUser(user.getUsername());
			elecase.setType("source");
			String action ="";
			if(!device.getDevice_id().equals(device1.getDevice_id())){
				action +="将装置ID："+device1.getDevice_id()+" 改为 "+device.getDevice_id()+"\n";
			}
			if(!device.getDevice_name().equals(device1.getDevice_name())){
				action +="将装置名称："+device1.getDevice_name()+" 改为 "+device.getDevice_name()+"\n";
			}
			if(!device.getDevice_type().equals(device1.getDevice_type())){
				action +="将装置类型："+device1.getDevice_type()+" 改为 "+device.getDevice_type()+"\n";
			}
			if(!device.getDevice_station().equals(device1.getDevice_station())){
				action +="将所属厂站："+device1.getDevice_station()+" 改为 "+device.getDevice_station()+"\n";
			}
			if(!device.getDevice_ruletype().equals(device1.getDevice_ruletype())){
				action +="将规约类型："+device1.getDevice_ruletype()+" 改为 "+device.getDevice_ruletype()+"\n";
			}
			if(!device.getDevice_rulename().equals(device1.getDevice_rulename())){
				action +="将规约选择："+device1.getDevice_rulename()+" 改为 "+device.getDevice_rulename()+"\n";
			}
			if(!device.getDevice_pipletype().equals(device1.getDevice_pipletype())){
				action +="将通道类型："+device1.getDevice_pipletype()+" 改为 "+device.getDevice_pipletype()+"\n";
			}
			if(!device.getDevice_state().equals(device1.getDevice_state())){
				action +="将当前状态："+device1.getDevice_state()+" 改为 "+device.getDevice_state()+"\n";
			}
			if(!device.getDevice_elec().equals(device1.getDevice_elec())){
				action +="将电压等级："+device1.getDevice_elec()+" 改为 "+device.getDevice_elec()+"\n";
			}
			elecase.setAction(action);
			caseService.saveCase(elecase);
		}
		
		show();
		return "update";
	}
	
	public String delete(){
		int id = Integer.parseInt(request.getParameter("id"));
		deviceService.delInfoById(id);//执行删除操作
		show();		
		return "delete";
	}
}
