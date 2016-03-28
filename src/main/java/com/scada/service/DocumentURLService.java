package com.scada.service;

import java.util.List;

import com.scada.domain.DocumentURL;
import com.scada.domain.Publish;

public interface DocumentURLService {
	
	public void saveDocumentURL(DocumentURL documentURL);
	
	public List<DocumentURL> getAll();
	
	public void delInfoById(int id); 
	
	public List<DocumentURL> getDocumentURLByType(String type,String subtype);
	
	public List<DocumentURL> getDocumentURLByName(String name);
	
	public List<DocumentURL> getDocumentURLByAuthor(String author);
	
	public List<DocumentURL> getDocumentURLByTime(String time);
}
