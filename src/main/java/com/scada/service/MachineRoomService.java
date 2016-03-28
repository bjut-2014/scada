package com.scada.service;

import java.util.List;

import com.scada.domain.MachineRoom;

public interface MachineRoomService {

	public void saveMachineRoom(MachineRoom machineRoom);
	
	public List<MachineRoom> getAll();
}
