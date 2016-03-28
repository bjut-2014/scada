package com.scada.service.impl;

import java.util.List;

import com.scada.dao.FileManagerDao;
import com.scada.domain.FileManager;
import com.scada.service.FileManagerService;

public class FileManagerServiceImpl implements FileManagerService{
	
	private FileManagerDao fileManagerDao;
	

	@Override
	public List<FileManager> getAll() {
		List<FileManager> fileManagers=fileManagerDao.getAll();
		return fileManagers;
	}
	
	public List<FileManager> Search(){
		List<FileManager> search=fileManagerDao.Search();
		return search;
	}
	
	

	public FileManagerDao getFileManagerDao() {
		return fileManagerDao;
	}

	public void setFileManagerDao(FileManagerDao fileManagerDao) {
		this.fileManagerDao = fileManagerDao;
	}

	@Override
	public void delete(Integer id) {
		fileManagerDao.delete(id);
	}

	@Override
	public void save() {
		
		fileManagerDao.save();
		
	}



}
