package com.scada.action;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
public class DocDownloadAction extends ActionSupport {
	private String downPath;//下载文件的文件位置
	private String fileName;  
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		 try {  
	            fileName = new String(fileName.getBytes("ISO-8859-1"),"UTF-8");  
	        } catch (UnsupportedEncodingException e) {  
	            e.printStackTrace();  
	        }  
	        //System.out.println("----"+fileName);  
	        this.fileName = fileName;  
	}
	public InputStream getInputStream() throws Exception{//返回InputStream流方法
		System.out.println("文件名"+downPath);
		 String name=this.getDownloadFileName();
		//  String realPath=ServletActionContext.getServletContext().getRealPath("/uploadImages")+ "/"+name; 路径错误
		   String realPath="upload/"+name;
		   System.out.println("1:"+name);
		   InputStream in=ServletActionContext.getServletContext().getResourceAsStream(realPath);
		   System.out.println(in);
		   if(null==in){
		    System.out.println("Can not find a java.io.InputStream with the name [inputStream] in the invocation stack. Check the <param name=\"inputName\"> tag specified for this action.检查action中文件下载路径是否正确.");   
		   }
		return ServletActionContext.getServletContext().getResourceAsStream(realPath);
	}
	public String getDownPath() {
		return downPath;
	}
	public void setDownPath(String downPath) {
		this.downPath = downPath;
	}
	/** 文件名 转换编码 防止中文乱码*/
	public String getDownloadFileName() {
	   String downFileName = downPath.substring(7);
	   System.out.println("文件名1:"+downFileName);
	   try {
	    //downFileName = new String(downFileName.getBytes(), "ISO8859-1");
		   downFileName = new String(downFileName.getBytes("ISO8859-1"), "utf-8");
	    System.out.println("文件名2:"+downFileName);
	   } catch (Exception e) {
	    e.printStackTrace();
	   }
	   return downFileName;

	
	}
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
}