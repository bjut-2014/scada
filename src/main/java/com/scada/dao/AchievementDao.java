package com.scada.dao;

import java.util.List;

import com.scada.domain.Achievement;
import com.scada.domain.MyInformation;




public interface AchievementDao {
    
    void delete(Integer id);
    List<Achievement> get();
    Achievement getByName(String name);	 
	 List<Achievement> getAll();
	 List<MyInformation> getAllinformation();
	 List<Achievement> Search();
	 void save();
    
}