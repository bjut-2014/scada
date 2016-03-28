package com.scada.dao;

import java.util.List;

import com.scada.domain.Client;

public interface ClientDao {

	public void save(Client client);
	
	public void delete(Integer id);
	
	public List<Client> getAll();

	public void update();
}
