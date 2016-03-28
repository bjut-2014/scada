package com.scada.dao;

import java.util.List;

import com.scada.domain.Telecommand;


public interface TelecommandDao {
		public void saveTelecommandDao(Telecommand elecommand);
		
		public void delete(Integer id);
		
		public List<Telecommand> getAll();
		
		public List<Telecommand> getTelecommandByName(String name);

		public List<Telecommand> getTelecommandByState(String station,
				String state);

		public Telecommand getTelecommandById(Integer id);

		public void update(Telecommand telecommand);
	
}
