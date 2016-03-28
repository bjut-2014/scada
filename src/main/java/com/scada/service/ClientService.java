package com.scada.service;

import java.util.List;

import com.scada.domain.Client;

public interface ClientService {

	public void save(Client client);
	
	public List<Client> getAll();
}
