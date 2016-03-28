package com.scada.domain;

import java.sql.*;
import java.util.*;
import java.awt.*;

public class BusinessOperation {
	private javax.servlet.http.HttpServletRequest request;
	private javax.servlet.http.HttpSession session;
	private String userType;
	private String companyName;
	private String residentName;
	private String area;
	private String companyNum;
	private String familyNum;
	private String ownerName;
	private String mainName;
	private String sex;
	private String birthday;
	private String address;
	private String tel;
	private String mobile;
	private String email;
	
    public void setuserType(String newuserType){
		this.userType = newuserType;
	  }	
	public String getuserType() {
	    return userType;
	  }
	public void setcompanyName(String newcompanyName){
		this.companyName = newcompanyName;
	  }	
	public String getcompanyName() {
	    return companyName;
	  }
	public void setresidentName(String newresidentName){
		this.residentName = newresidentName;
	  }	
	public String getresidentName() {
	    return residentName;
	  }
	public void setarea(String newarea){
		this.area = newarea;
	  }	
	public String getarea() {
	    return area;
	  }
	public void setcompanyNum(String newcompanyNum){
		this.companyNum = newcompanyNum;
	  }	
	public String getcompanyNum() {
	    return companyNum;
	  }
	public void setfamilyNum(String newfamilyNum){
		this.familyNum = newfamilyNum;
	  }	
	public String getfamilyNum() {
	    return familyNum;
	  }
	public void setownerName(String newownerName){
		this.ownerName = newownerName;
	  }	
	public String getownerName() {
	    return ownerName;
	  }
	public void setmainName(String newmainName){
		this.mainName = newmainName;
	  }	
	public String getmainName() {
	    return mainName;
	  }
	public void setsex(String newsex){
		this.sex = newsex;
	  }	
	public String getsex() {
	    return sex;
	  }
	public void setbirthday(String newbirthday){
		this.birthday = newbirthday;
	  }	
	public String getbirthday() {
	    return birthday;
	  }
	public void setaddress(String newaddress){
		this.address = newaddress;
	  }	
	public String getaddress() {
	    return address;
	  }
	public void settel(String newtel){
		this.tel = newtel;
	  }	
	public String gettel() {
	    return tel;
	  }
	public void setmobile(String newmobile){
		this.mobile = newmobile;
	  }	
	public String getmobile() {
	    return mobile;
	  }
	public void setemail(String newemail){
		this.email = newemail;
	  }	
	public String getemail() {
	    return email;
	  }
	
		
}
