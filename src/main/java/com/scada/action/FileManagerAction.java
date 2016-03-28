package com.scada.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scada.service.FileManagerService;

public class FileManagerAction extends ActionSupport implements RequestAware{
/**
	 * 
	 */
private static final long serialVersionUID = 1L;
private FileManagerService fileManagerService;
private Map<String, Object> request;
private String message;
private String select;
private String swit;

/*******addFile的参数*******/
private String sname;
private String identity_card;
private String sex;

private String both;

private String age;

private String location;

private String zip_code;

private String nation; 
private String politics_status; 
private String school; 
private String education_background;
private String major; 

private String job_title;
private String job_title_date;
private String qualification;
private String telephone; 
private String mobilephone;

private String urgent_phone;

private String company_email;
private String sole_email;
/*******addFile的参数*******/

public String FileManager()throws Exception{
	int id;
	ActionContext actionContext = ActionContext.getContext();
	Map<String, Object> session = actionContext.getSession();
	session.put("select", select);
	session.put("message", message);
	
	/*******addFile的Session*******/
	session.put("sname", sname);
	session.put("sex", sex);
	session.put("age", age);
	session.put("identity_card", identity_card);
	session.put("both", both);
	session.put("location", location);
	session.put("zip_code", zip_code);
	session.put("nation", nation);
	session.put("politics_status", politics_status);
	session.put("school", school);
	session.put("major", major);
	session.put("education_background", education_background);
	session.put("job_title", job_title);
	session.put("job_title_date", job_title_date);
	session.put("qualification", qualification);
	session.put("telephone", telephone);
	session.put("mobilephone", mobilephone);
	session.put("urgent_phone", urgent_phone);
	session.put("company_email", company_email);
	session.put("sole_email", sole_email);
	/*******addFile的Session*******/

	if(swit!=null){
	switch(swit){
	case "查找信息":
	{
	   if(message!=""){
	       request.put("fileManager", fileManagerService.Search());
	       return "FileManager";
	   }else{
	 	   return "FileManager";
	   }
	}
	case "删除信息":{
		if(message.equals("")||select.equals("name")||select.equals("card")){
			request.put("fileManager", fileManagerService.getAll());
		 	return "FileManager";
		}else{
		 	id=Integer.valueOf(message); 
			fileManagerService.delete(id);
		    request.put("fileManager", fileManagerService.getAll());
		    return "FileManager";
		}
	}
	case "提交":
	{
		if(!sname.equals("")&&!sex.equals("")&&!age.equals("")&&!both.equals("")
				&&!identity_card.equals("")&&!zip_code.equals("")
				&&!location.equals("")&&!nation.equals("")&&!politics_status.equals("")
				&&!school.equals("")&&!major.equals("")&&!education_background.equals("")
				&&!job_title.equals("")&&!job_title_date.equals("")&&!qualification.equals("")
				&&!mobilephone.equals("")&&!company_email.equals("")&&!sole_email.equals("")
				){
		    fileManagerService.save();
		    request.put("fileManager", fileManagerService.getAll());	
	 	    return "FileManager";
		}else{
			request.put("fileManager", fileManagerService.getAll());	
		 	return "FileManager";
		}
	}
	default:
	    {
	    	fileManagerService.save();
		request.put("fileManager", fileManagerService.getAll());
	    return "FileManager";
	    }
	}
	}else{
		request.put("fileManager", fileManagerService.getAll());
	    return "FileManager";
	}
}

public String getSwit() {
	return swit;
}


public void setSwit(String swit) {
	this.swit = swit;
}


public String getMessage() {
	return message;
}


public void setMessage(String message) {
	this.message = message;
	
}

public String getSelect() {
	return select;
}

public void setSelect(String select) {
	this.select = select;
	
}

@Override
public void setRequest(Map<String, Object> request) {
	this.request=request;
}



public Map<String, Object> getRequest() {
	return request;
}

public String input(Map<String, Object> request){
	request.put("fileManager", fileManagerService.Search());
	return INPUT;
}

public FileManagerService getFileManagerService() {
	return fileManagerService;
}

public void setFileManagerService(FileManagerService fileManagerService) {
	this.fileManagerService = fileManagerService;
}

/*******addFile的参数getter和setter方法*******/
public String getSname() {
	return sname;
}

public void setSname(String sname) {
	this.sname = sname;
}

public String getSex() {
	return sex;
}

public void setSex(String sex) {
	this.sex = sex;
}

public String getAge() {
	return age;
}

public void setAge(String age) {
	this.age = age;
}

public String getIdentity_card() {
	return identity_card;
}

public void setIdentity_card(String identity_card) {
	this.identity_card = identity_card;
}

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}

public String getNation() {
	return nation;
}

public void setNation(String nation) {
	this.nation = nation;
}

public String getPolitics_status() {
	return politics_status;
}

public void setPolitics_status(String politics_status) {
	this.politics_status = politics_status;
}

public String getSchool() {
	return school;
}

public void setSchool(String school) {
	this.school = school;
}

public String getMajor() {
	return major;
}

public void setMajor(String major) {
	this.major = major;
}

public String getEducation_background() {
	return education_background;
}

public void setEducation_background(String education_background) {
	this.education_background = education_background;
}

public String getJob_title() {
	return job_title;
}

public void setJob_title(String job_title) {
	this.job_title = job_title;
}

public String getJob_title_date() {
	return job_title_date;
}

public void setJob_title_date(String job_title_date) {
	this.job_title_date = job_title_date;
}

public String getQualification() {
	return qualification;
}

public void setQualification(String qualification) {
	this.qualification = qualification;
}

public String getTelephone() {
	return telephone;
}

public void setTelephone(String telephone) {
	this.telephone = telephone;
}

public String getMobilephone() {
	return mobilephone;
}

public void setMobilephone(String mobilephone) {
	this.mobilephone = mobilephone;
}

public String getCompany_email() {
	return company_email;
}

public void setCompany_email(String company_email) {
	this.company_email = company_email;
}

public String getSole_email() {
	return sole_email;
}

public void setSole_email(String sole_email) {
	this.sole_email = sole_email;
}

public String getBoth() {
	return both;
}

public void setBoth(String both) {
	this.both = both;
}

public String getZip_code() {
	return zip_code;
}

public void setZip_code(String zip_code) {
	this.zip_code = zip_code;
}

public String getUrgent_phone() {
	return urgent_phone;
}

public void setUrgent_phone(String urgent_phone) {
	this.urgent_phone = urgent_phone;
}


/*******addFile的参数getter和setter方法*******/




}
