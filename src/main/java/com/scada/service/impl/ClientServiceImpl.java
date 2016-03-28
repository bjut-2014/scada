package com.scada.service.impl;

import java.util.List;

import com.scada.dao.ClientDao;
import com.scada.domain.Client;
import com.scada.service.ClientService;

public class ClientServiceImpl implements ClientService {

	private ClientDao clientDao;

	public ClientDao getClientDao() {
		return clientDao;
	}
	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}
	@Override
	public void save(Client client) {
		// TODO Auto-generated method stub
		this.clientDao.save(client);
	}
	@Override
	public List<Client> getAll() {
		// TODO Auto-generated method stub
		List<Client> clients = clientDao.getAll();
		return clients;
	}
	
	
}