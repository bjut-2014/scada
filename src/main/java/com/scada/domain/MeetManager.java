package com.scada.domain;

public class MeetManager {
  private int meet_id;
  private String meet_name;
  private String meet_title;
  private String meet_content;
  private int people_num;
  private String start_end;
  private String location;
  private int meetroom_num;
  private String useful_time;  
  private int room_size;
 
  
  public int getMeet_id() {
	return meet_id;
  }

  public void setMeet_id(int meet_id) {
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

  
  
  public int getPeople_num() {
	return people_num;
  }

  public void setPeople_num(int people_num) {
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

  public String getUseful_time() {
	return useful_time;
  }

  public void setUseful_time(String useful_time) {
	this.useful_time = useful_time;
  }

  public int getMeetroom_num() {
	return meetroom_num;
  }

  public void setMeetroom_num(int meetroom_num) {
	this.meetroom_num = meetroom_num;
  }


  public int getRoom_size() {
	return room_size;
  }

  public void setRoom_size(int room_size) {
	this.room_size = room_size;
  }
 
}
