package com.scada.action;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;





import com.opensymphony.xwork2.ActionSupport;

public class documentsAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File file;
    private String contentType;
    private String filename;
    public void setUpload(File file) {
        this.file = file;
     }
 
     public void setUploadContentType(String contentType) {
        this.contentType = contentType;
     }
 
     public void setUploadFileName(String filename) {
        this.filename = filename;
     }
     
	public String execute() throws Exception{
		upload();
		return SUCCESS;
	}
	 
	public String upload() throws Exception{
		System.out.println("filename:"+filename);
		System.out.println(ServletActionContext.getServletContext().getRealPath("upload"));
		File saved = new File(ServletActionContext.getServletContext().getRealPath("upload"),filename);
		InputStream ins = null;
		OutputStream ous = null;
		try{
			saved.getParentFile().mkdirs();
			ins = new FileInputStream(file);
			ous = new FileOutputStream(saved);
			
			byte[] b = new byte[1024];
			int len = 0 ;
			while ((len - ins.read(b))!=-1){
				ous.write(b,0,len);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (ous != null) ous.close();
			if (ins != null) ins.close();
		}
		return "list";
		
	}


	
	/*public String upload(){
		//request.put("machineRooms", machineRoomService.getAll());
		return "upload";
	}*/
	
}
