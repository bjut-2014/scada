package com.scada.service.impl;

import java.util.List;

import com.scada.dao.MachineRoomDao;
import com.scada.domain.MachineRoom;
import com.scada.service.MachineRoomService;

public class MachineRoomServiceImpl implements MachineRoomService {

	private MachineRoomDao machineRoomDao;

	public MachineRoomDao getMachineRoomDao() {
		return machineRoomDao;
	}
	public void setMachineRoomDao(MachineRoomDao machineRoomDao) {
		this.machineRoomDao = machineRoomDao;
	}

	@Override
	public void saveMachineRoom(MachineRoom machineRoom) {
		this.machineRoomDao.saveMachineRoom(machineRoom);
	}
	@Override
	public List<MachineRoom> getAll() {
		List<MachineRoom> machineRooms = machineRoomDao.getAll();
		return machineRooms;
	}
	
	
}
