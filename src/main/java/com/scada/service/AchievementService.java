package com.scada.service;

import java.util.List;

import com.scada.domain.Achievement;
import com.scada.domain.MyInformation;




public interface AchievementService {
	
	 public void save();
	 
	 void delete(Integer id);
	    
	 public List<Achievement> getAll();
	 
	 public List<MyInformation> getAllinformation();
	 
	 public List<Achievement> Search();
}
