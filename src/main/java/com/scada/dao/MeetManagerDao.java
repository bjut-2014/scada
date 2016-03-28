package com.scada.dao;

import java.util.List;

import com.scada.domain.MeetManager;
import com.scada.domain.Room;

public interface MeetManagerDao {
	
     List<MeetManager> get();
     
     List<MeetManager> Search();
     
	 List<MeetManager> getAll();
	 
	 List<Room> getAllRoom();
	 
	 void save();
	 
	 String query(String id);
	 
	 String queryRoomUseful(String mess);
	 
	 void updateAndDelete(int id);
	 
	 void delete(String id);
	 
	 String check(String id);
	 
	 void updateAndInput(int id);
	 
}
