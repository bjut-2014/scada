package com.scada.dao;

import java.util.List;

import com.scada.domain.DocumentURL;

public interface DocumentURLDao {
	
	public void saveDocumentURL(DocumentURL documentURL);
	
	public void delete(Integer id);
	
	public List<DocumentURL> getAll();
	
	public DocumentURL getDocumentURLById(int id);
	
	public List<DocumentURL> getDocumentURLByType(String type,String subtype);
	
	public List<DocumentURL> getDocumentURLByName(String name);
	
	public List<DocumentURL> getDocumentURLByAuthor(String author);
	
	public List<DocumentURL> getDocumentURLByTime(String time);
	
	
}
