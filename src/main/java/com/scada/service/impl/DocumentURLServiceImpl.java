package com.scada.service.impl;

import java.util.List;

import com.scada.dao.DocumentURLDao;
import com.scada.domain.DocumentURL;
import com.scada.service.DocumentURLService;

public class DocumentURLServiceImpl implements DocumentURLService{

	private DocumentURLDao documentURLDao;
	
	public DocumentURLDao getDocumentURLDao() {
		return documentURLDao;
	}

	public void setDocumentURLDao(DocumentURLDao documentURLDao) {
		this.documentURLDao = documentURLDao;
	}

	@Override
	public void saveDocumentURL(DocumentURL documentURL) {
		// TODO Auto-generated method stub
		this.documentURLDao.saveDocumentURL(documentURL);
	}

	@Override
	public List<DocumentURL> getAll() {
		// TODO Auto-generated method stub
		List<DocumentURL> documentURLs = documentURLDao.getAll();
		
		//System.out.println("Service:"+documentURLs.get(0).getDoc_url());
		return documentURLs;
	}

	@Override
	public void delInfoById(int id) {
		// TODO Auto-generated method stub
		documentURLDao.delete(id);
	}

	@Override
	public List<DocumentURL> getDocumentURLByType(String type, String subtype) {
		// TODO Auto-generated method stub
		List<DocumentURL> documentURLs = documentURLDao.getDocumentURLByType(type, subtype);
		return documentURLs;
	}

	@Override
	public List<DocumentURL> getDocumentURLByName(String name) {
		// TODO Auto-generated method stub
		List<DocumentURL> documentURLs = documentURLDao.getDocumentURLByName(name);
		return documentURLs;
	}

	@Override
	public List<DocumentURL> getDocumentURLByAuthor(String author) {
		// TODO Auto-generated method stub
		List<DocumentURL> documentURLs = documentURLDao.getDocumentURLByAuthor(author);
		return documentURLs;
	}

	@Override
	public List<DocumentURL> getDocumentURLByTime(String time) {
		// TODO Auto-generated method stub
		return null;
	}



}
