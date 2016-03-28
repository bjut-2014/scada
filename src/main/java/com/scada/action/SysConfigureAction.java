package com.scada.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.SysConfig;
import com.scada.service.SysConfigService;

public class SysConfigureAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private static final int BUFFER_SIZE = 40*40;
	private SysConfigService sysConfigService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;
	private SysConfig sysConfig;
	private String savePath;
//	private String sysName;
//	private String sysTitle;
//	private String sysLogoAddr;
//	private String sysBottomMsg;
	
	
	//显示主页面
	public String show(){
		request.setAttribute("sysConfigInfo", sysConfigService.get(1));
		return "show";
	}

	//保存系统的基本配置信息
	public String save() throws IOException{
		SysConfig sysConfigInfo = sysConfigService.get(1);
		sysConfigInfo.setSysName(new String(sysConfig.getSysName().getBytes("ISO-8859-1"),"UTF-8"));
		sysConfigInfo.setSysTitle(new String(sysConfig.getSysTitle().getBytes("ISO-8859-1"),"UTF-8"));
		sysConfigInfo.setSysBottomMsg(new String(sysConfig.getSysBottomMsg().getBytes("ISO-8859-1"),"UTF-8"));
		//文件的全路径名
		String filePathAndName = new String(sysConfig.getSysLogoAddr().getBytes("ISO-8859-1"),"UTF-8");
		//文件名+'\'
		String fileName = filePathAndName.substring(filePathAndName.lastIndexOf("\\"));
		//文件名
		String logoName = fileName.substring(1, fileName.length());
		//拷贝服务器中的文件全路径名
		String path =ServletActionContext.getServletContext().getRealPath(this.getSavePath())+"\\"+fileName;
		sysConfigInfo.setSysLogoAddr(logoName);
		File target = new File(path);
		copy(new File(filePathAndName),target);
		
		sysConfigService.update(sysConfigInfo);
		return "save";
	}
	
	private static void copy(File source,File target){
		InputStream inputStream = null;
		OutputStream outputStream = null;
		try {
			inputStream = new BufferedInputStream(new FileInputStream(source),BUFFER_SIZE);
			outputStream = new BufferedOutputStream(new FileOutputStream(target),BUFFER_SIZE);
			
			byte[] buffer = new byte[BUFFER_SIZE];
			int length = 0;
			while((length=inputStream.read(buffer))>0){
				outputStream.write(buffer,0,length);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(null!=inputStream){
				try {
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(null!=outputStream){
				try {
					outputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
	
	
	public SysConfigService getSysConfigService() {
		return sysConfigService;
	}

	public void setSysConfigService(SysConfigService sysConfigService) {
		this.sysConfigService = sysConfigService;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public SysConfig getSysConfig() {
		return sysConfig;
	}

	public void setSysConfig(SysConfig sysConfig) {
		this.sysConfig = sysConfig;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	
	
}
