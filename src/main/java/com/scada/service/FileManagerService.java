package com.scada.service;

import java.util.List;

import com.scada.domain.FileManager;

public interface FileManagerService { 
    
    public List<FileManager> getAll();
    
    List<FileManager> Search();
    
    void delete(Integer id);
    
    void save();
    
}
