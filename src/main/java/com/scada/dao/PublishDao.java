package com.scada.dao;

import java.util.List;

import com.scada.domain.Publish;

public interface PublishDao {
	public void savePublish(Publish Publish);
	
	public void delete(Integer id);
	
	public void modify(Publish Publish);
	
	public List<Publish> getAll();
	
	public List<Publish> getPublishByStation(String station);
	
	public Publish getPublishByName(String name);
	
	public Publish getPublishById(int id);

	public void update(Publish publish);
}
