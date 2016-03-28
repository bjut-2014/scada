package com.scada.action;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
public class DocArrayAction extends ActionSupport {
	private String name;//上传者
	private File[] upload;//封装上传文件域的属性
	private String[] uploadContentType;//封装上传文件的类型
	private String[] uploadFileName;//封装上传文件名
	private String savePath;//封装上传文件的保存路径 
	private Date createTime;//上传时间
	
	
	public Date getCreateTime() {
		createTime=new Date();//实例化日期
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	/**
	 * 将源文件复制成目标文件
	 * @param source	源文件对象
	 * @param target	目标文件对象
	 */
	private static void copy(File source,File target){
		InputStream inputStream=null;						//声明一个输入流
		OutputStream outputStream=null;						//声明一个输出流
		try {
			inputStream=new BufferedInputStream(new FileInputStream(source)); //实例化输入流
			outputStream=new BufferedOutputStream(new FileOutputStream(target));//实例化输出流
			byte[] buffer=new byte[1024];			//定义字节数组buffer
			int length=0;									//定义临时参数对象
			while ((length=inputStream.read(buffer))>0) {	//如果上传的文件字节数大于0
				outputStream.write(buffer,0,length);		//将内容以字节形式写入
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if (null!=inputStream) {
				try {
					inputStream.close();				//关闭输入流
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			if (null!=outputStream) {
				try {
					outputStream.close();				//关闭输出流
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}
	}
	public String execute() throws Exception {
		for (int i = 0; i < upload.length; i++) {
			//根据服务器的文件保存地址和源文件名创建目录文件全路径
			String path=ServletActionContext.getServletContext().getRealPath(this.getSavePath())+"\\"+
			this.uploadFileName[i];
			File target=new File(path);			//定义目标文件对象
			System.out.println("path:"+path+"/tname:"+name);
			copy(this.upload[i], target);		//调用copy()方法，实现文件的写入
		}
		return SUCCESS;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public File[] getUpload() {
		return upload;
	}
	public void setUpload(File[] upload) {
		this.upload = upload;
	}
	public String[] getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String[] uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String[] getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String[] uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getSavePath() {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	
	

}