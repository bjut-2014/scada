package com.scada.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scada.service.MeetManagerService;

public class MeetManagerAction extends ActionSupport implements RequestAware{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String,Object> request;
    private MeetManagerService meetManagerService;
    private String swit;
    private String select;
    private String message;
    
    /*****************************************************/
    private String meet_id;
    private String meet_name;
    private String meet_title;
    private String meet_content;
    private String people_num;
    private String start_end;
    private String location;
    private String meetroom_num;
    private String useful_time;  
    private String room_size;
    /*****************************************************/
    
   
    
    public MeetManagerService getMeetManagerService() {
		return meetManagerService;
	}
    
	public void setMeetManagerService(MeetManagerService meetManagerService) {
		this.meetManagerService = meetManagerService;
	}
	
	public Map<String,Object> getRequest(){
    	return request;
    }
	
	@Override
	public void setRequest(Map<String, Object> request) {
        this.request=request;		
	}
    

	public String MeetManager()throws Exception{
		
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
	    session.put("select", select);
	    session.put("message", message);
	    session.put("swit", swit);
	    
	    /*****************************************************/
	    session.put("meet_id", meet_id);
	    session.put("meet_name", meet_name);
	    session.put("meet_title", meet_title);
	    session.put("meet_content", meet_content);
	    session.put("people_num", people_num);
	    session.put("start_end", start_end);
	    session.put("location", location);
	    session.put("meetroom_num", meetroom_num);
	    session.put("useful_time", useful_time);
	    session.put("room_size", room_size);
	    /*****************************************************/
	    
		if(swit!=null){
			switch(swit){
			case "查找会议":
			{			
				   if(message!=""){
					   request.put("meetManager", meetManagerService.Search());
					   request.put("room", meetManagerService.getAllRoom());			       
				       return "MeetManager";
				   }else{
					   request.put("meetManager", meetManagerService.getAll());
					   request.put("room", meetManagerService.getAllRoom());
				 	   return "MeetManager";
				   }				   
			}
			case "删除会议":
			{
				if(message.equals("")||select.equals("name")||select.equals("card")){
					request.put("meetManager", meetManagerService.getAll());
					request.put("room", meetManagerService.getAllRoom());
				 	return "MeetManager";
				}else{
					
				 	String mess=meetManagerService.query(message);
				 	if(mess!=null){
				 	    int id = Integer.valueOf(mess);
				 	    meetManagerService.updateAndDelete(id);
				 	    meetManagerService.delete(message);
				        request.put("meetManager", meetManagerService.getAll());
				        request.put("room", meetManagerService.getAllRoom());
				        return "MeetManager";
					}else{
						request.put("meetManager", meetManagerService.getAll());
				        request.put("room", meetManagerService.getAllRoom());
						return "MeetManager";
					}
				}
				
			}
			case "提交":
			{
				String cid=meetManagerService.check(meet_id);
				String useful=null;
			
				if(cid==null&&!meetroom_num.equals("")&&!meet_name.equals("")&&
						!meet_title.equals("")&&!meet_content.equals("")&&!start_end.equals("")
						&&!location.equals("")&&!useful_time.equals("")&&!room_size.equals("")){
					
				    System.out.println(meetroom_num);
				    
				    useful=meetManagerService.queryRoomUseful(meetroom_num);

				    System.out.println(useful);
				    
				    if(useful==null){
				    	request.put("meetManager", meetManagerService.getAll());
			            request.put("room", meetManagerService.getAllRoom());
		 	            return "MeetManager";
				        	
			 	    }else{
						
					    if(useful.equals("可用")){
					    	System.out.println(123);
					    	meetManagerService.save();
					    	int id_1 = Integer.valueOf(meetroom_num);
					        meetManagerService.updateAndInput(id_1);
					        request.put("meetManager", meetManagerService.getAll());
					        request.put("room", meetManagerService.getAllRoom());
				 	        return "MeetManager";
					    }else{
					    	request.put("meetManager", meetManagerService.getAll());
					        request.put("room", meetManagerService.getAllRoom());
				 	        return "MeetManager";
					    }
					    	
					}
				}else{
					request.put("meetManager", meetManagerService.getAll());
			        request.put("room", meetManagerService.getAllRoom());
		 	        return "MeetManager";
				}
			}
			default:
			{
				request.put("meetManager", meetManagerService.getAll());
		        request.put("room", meetManagerService.getAllRoom());
			    return "MeetManager";
			}
			}
			
		
		}else
		{
		request.put("meetManager", meetManagerService.getAll());
		request.put("room", meetManagerService.getAllRoom());
		//System.out.println(request);
		return "MeetManager";
		}
 
	}
	
	public String input(Map<String, Object> request){
		request.put("meetManager", meetManagerService.getAll());
		return INPUT;
	}
	
	public String getSwit() {
		return swit;
	}
	
	public void setSwit(String swit) {
		this.swit = swit;
	}
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	public String getMeet_id() {
		return meet_id;
	}

	public void setMeet_id(String meet_id) {
		this.meet_id = meet_id;
	}

	public String getMeet_name() {
		return meet_name;
	}

	public void setMeet_name(String meet_name) {
		this.meet_name = meet_name;
	}

	public String getMeet_title() {
		return meet_title;
	}

	public void setMeet_title(String meet_title) {
		this.meet_title = meet_title;
	}

	public String getMeet_content() {
		return meet_content;
	}

	public void setMeet_content(String meet_content) {
		this.meet_content = meet_content;
	}

	public String getPeople_num() {
		return people_num;
	}

	public void setPeople_num(String people_num) {
		this.people_num = people_num;
	}

	public String getStart_end() {
		return start_end;
	}

	public void setStart_end(String start_end) {
		this.start_end = start_end;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getMeetroom_num() {
		return meetroom_num;
	}

	public void setMeetroom_num(String meetroom_num) {
		this.meetroom_num = meetroom_num;
	}

	public String getUseful_time() {
		return useful_time;
	}

	public void setUseful_time(String useful_time) {
		this.useful_time = useful_time;
	}

	public String getRoom_size() {
		return room_size;
	}

	public void setRoom_size(String room_size) {
		this.room_size = room_size;
	}
	
	
	
	
}
