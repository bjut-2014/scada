package com.scada.service.impl;

import java.util.List;

import com.scada.dao.PublishDao;
import com.scada.domain.Publish;
import com.scada.service.PublishService;

public class PublishServiceImpl implements PublishService {

	private PublishDao publishDao; 
	public PublishDao getPublishDao() {
		return publishDao;
	}

	public void setPublishDao(PublishDao publishDao) {
		this.publishDao = publishDao;
	}

	@Override
	public void savePublish(Publish publish) {
		// TODO Auto-generated method stub
		publishDao.savePublish(publish);
	}

	@Override
	public List<Publish> getAll() {
		// TODO Auto-generated method stub
		return publishDao.getAll();
	}

	@Override
	public void delInfoById(int id) {
		// TODO Auto-generated method stub
		publishDao.delete(id);
	}

	@Override
	public Publish getPublishById(int id) {
		// TODO Auto-generated method stub
		return publishDao.getPublishById(id);
	}

	@Override
	public void updatePublish(Publish publish) {
		// TODO Auto-generated method stub
		publishDao.update(publish);
	}

}
