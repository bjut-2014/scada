package com.scada.service.impl;

import java.util.List;

import com.scada.dao.MeetManagerDao;
import com.scada.domain.MeetManager;
import com.scada.domain.Room;
import com.scada.service.MeetManagerService;

public class MeetManagerServiceImpl implements MeetManagerService {
    private MeetManagerDao meetManagerDao;
    
    
	public MeetManagerDao getMeetManagerDao() {
		return meetManagerDao;
	}

	public void setMeetManagerDao(MeetManagerDao meetManagerDao) {
		this.meetManagerDao = meetManagerDao;
	}

	@Override
	public void saveMeetManager(MeetManager meetManager) {

	}
	
	@Override
	public List<Room> getAllRoom() {
		List<Room> rooms=meetManagerDao.getAllRoom();
		return rooms;
	}

	@Override
	public List<MeetManager> getAll() {
		List<MeetManager> meets=meetManagerDao.getAll();
		return meets;
	}

	@Override
	public List<MeetManager> Search() {
		List<MeetManager> meetManager=meetManagerDao.Search();
		return meetManager;
	}

	@Override
	public void updateAndDelete(int id) {
		meetManagerDao.updateAndDelete(id);
	}
	
	@Override
	public void updateAndInput(int id) {
		meetManagerDao.updateAndInput(id);	
	}

	@Override
	public String query(String id) {
		return meetManagerDao.query(id);
	}

	@Override
	public String queryRoomUseful(String mess) {
		return meetManagerDao.queryRoomUseful(mess);
	}

	
	@Override
	public void delete(String id) {
		meetManagerDao.delete(id);	
	}

	@Override
	public void save() {
		meetManagerDao.save();
		
	}

	@Override
	public String check(String id) {		
		return meetManagerDao.check(id);
	}

	
	
}
