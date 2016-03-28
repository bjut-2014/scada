package com.scada.service.impl;

import java.util.List;

import com.scada.dao.AchievementDao;
import com.scada.domain.Achievement;
import com.scada.domain.MyInformation;
import com.scada.service.AchievementService;

public class AchievementServiceImpl implements AchievementService{
    private AchievementDao achievementDao;
	@Override
	public void save() {
			
		achievementDao.save();
	}

	@Override
	public List<Achievement> getAll() {
		List<Achievement> achievements=achievementDao.getAll();
		return achievements;
	}
	
	@Override
	public List<MyInformation> getAllinformation(){
		
		List<MyInformation> myinfors =achievementDao.getAllinformation();
		return myinfors;
		
	}

	
	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Achievement> Search() {
		List<Achievement> search=achievementDao.Search();
		return search;
	}

	
	public AchievementDao getAchievementDao() {
		return achievementDao;
	}

	public void setAchievementDao(AchievementDao achievementDao) {
		this.achievementDao = achievementDao;
	}

	


	
}
