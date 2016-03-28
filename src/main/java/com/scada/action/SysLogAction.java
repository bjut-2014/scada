package com.scada.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.SysLog;
import com.scada.service.SysConfigService;
import com.scada.service.SysLogService;

public class SysLogAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private SysLogService sysLogService;
	private SysConfigService sysConfigService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;
	private String result;
	private Integer pageNo;//当前页码
	private Integer pageSize;//页面信息条数
	private Integer pageWidth;//可见的页面宽度
	private Integer pageTotal;//总页数
	private Integer msgTotal;//总信息数
	//打印出系统的日志信息
	public String show(){
//		List<SysLog> sysLogList = sysLogService.getAll();
		//首次进入页面，pageno设置默认值为1
		String a =request.getParameter("pageNo");
		if(request.getParameter("pageNo")==null){
			pageNo = 1;
		}else{
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
		}
		//计算该表所有的行个数
		msgTotal = sysLogService.getAll().size();
		pageSize = sysConfigService.get(1).getPageSize();
		//计算总页数
		pageTotal = msgTotal%pageSize==0 ? msgTotal/pageSize : msgTotal/pageSize + 1;
		//计算可见的页面宽度
		pageWidth = pageTotal > sysConfigService.get(1).getPageWidth() ? sysConfigService.get(1).getPageWidth() : pageTotal;
		List<SysLog> sysLogList = sysLogService.findByPage(pageNo, pageSize);
		//页码
		List<Integer> pagesWide = new ArrayList<>();
		for(int i=0,j=pageNo > pageWidth/2 ? (pageNo-pageWidth/2) +1:1;i<pageWidth;i++,j++){
			if(j>pageTotal)
				break;
			pagesWide.add(j);
		}
		if(pageNo+4>pageTotal){
			pagesWide.clear();
			for(int i=0,j=pageTotal-pageWidth+1;i<pageWidth;i++,j++){
				pagesWide.add(j);
			}
		}
		request.setAttribute("sysLogList", sysLogList);
		request.setAttribute("pageTotal", pageTotal);
		request.setAttribute("pageNo", pageNo);
		request.setAttribute("pageWidth", pageWidth);
		request.setAttribute("pagesWide", pagesWide);
		return "show";
	}

	//删除指定的日志信息
	public String delete(){
		Integer sysLogId = Integer.parseInt(request.getParameter("sysLogId"));
		sysLogService.delete(sysLogId);
		return "delete";
	}
	
	//删除所有日志
	public String deleteAll(){
		sysLogService.deleteAll();
		return "deleteAll";
	}
	
	
	public String sysStart(){
		return "sysStart";
	}
	
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public SysLogService getSysLogService() {
		return sysLogService;
	}

	public void setSysLogService(SysLogService sysLogService) {
		this.sysLogService = sysLogService;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public SysConfigService getSysConfigService() {
		return sysConfigService;
	}

	public void setSysConfigService(SysConfigService sysConfigService) {
		this.sysConfigService = sysConfigService;
	}
	
}
