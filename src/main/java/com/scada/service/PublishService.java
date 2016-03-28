package com.scada.service;

import java.util.List;

import com.scada.domain.Publish;

public interface PublishService {
	public void savePublish(Publish publish);
	public void updatePublish(Publish publish);
	
	public List<Publish> getAll();
	
	public void delInfoById(int id); 
	
	public Publish getPublishById(int id);
	
	
}
