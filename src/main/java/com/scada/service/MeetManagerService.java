package com.scada.service;

import java.util.List;

import com.scada.domain.MeetManager;
import com.scada.domain.Room;

public interface MeetManagerService {
	
    public void saveMeetManager(MeetManager meetManager);
	
	public List<MeetManager> getAll();
	
	public List<Room> getAllRoom();
	
	public List<MeetManager> Search();

	String query(String mess);
	
	String queryRoomUseful(String mess);

	void updateAndDelete(int id);
	
	void updateAndInput(int id);
	
	void delete(String id);

	public void save();
	
	public String check(String id);
}
