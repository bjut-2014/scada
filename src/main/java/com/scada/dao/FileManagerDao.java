package com.scada.dao;

import java.util.List;

import com.scada.domain.FileManager;


public interface FileManagerDao {
     
	 void delete(Integer id);
     List<FileManager> get();
     FileManager getByName(String name);
	 List<FileManager> getAll();
	 List<FileManager> Search();
	 void save();
}
