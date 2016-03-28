package com.scada.action;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.DocumentURL;
import com.scada.domain.User;
import com.scada.service.DocumentURLService;
public class DocListAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{
	private List<File> upload;//封装上传文件域的属性
	private List<String> uploadContentType;//封装上传文件的类型
	private List<String> uploadFileName;//封装上传文件名
	private String savePath;//封装上传文件的保存路径 
	private Date createTime;//上传时间
	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private DocumentURLService duService;
	
	public DocumentURLService getDuService() {
		return duService;
	}
	public void setDuService(DocumentURLService duService) {
		this.duService = duService;
	}
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
	public void doubleselect(){
		Map<String,List<String>> map = new HashMap<String,List<String>>();
		String t1 = "党群工作";
		List<String> stList1 = new ArrayList<String>();
		String st1 = "党群工作综合";
		String st2 = "党务工作综合";
		String st3 = "组织工作";
		String st4 = "纪检工作";
		String st5 = "宣传、统战工作";
		String st6 = "工会工作";
		String st7 = "共青团、青年工作";
		String st8 = "协会、学会工作";
		stList1.add(st1);
		stList1.add(st2);
		stList1.add(st3);
		stList1.add(st4);
		stList1.add(st5);
		stList1.add(st6);
		stList1.add(st7);
		stList1.add(st8);
		map.put(t1,stList1);
		
		String t2 = "行政管理";
		List<String> stList2 = new ArrayList<String>();
		String st9 = "行政管理综合";
		String st10 = "行政事务";
		String st11 = "武装保卫";
		String st12 = "监察";
		String st13 = "医疗卫生";
		String st14 = "后勤福利";
		String st15 = "外事工作";	
		stList2.add(st9);
		stList2.add(st10);
		stList2.add(st11);
		stList2.add(st12);
		stList2.add(st13);
		stList2.add(st14);
		stList2.add(st15);		
		map.put(t2,stList2);
		
		String t3 = "经营管理";
		List<String> stList3 = new ArrayList<String>();
		String st16 = "经营管理综合";
		String st17 = "计划统计";
		String st18 = "物资管理";
		String st19 = "用电、供热营业";
		String st20 = "农村电网和农电管理";
		String st21 = "产品销售";
		String st22 = "多种经营";	
		stList3.add(st16);
		stList3.add(st17);
		stList3.add(st18);
		stList3.add(st19);
		stList3.add(st20);
		stList3.add(st21);
		stList3.add(st22);		
		map.put(t3,stList3);		
		
		List<String> stList4 = new ArrayList<String>();
		stList4.add("生产技术管理综合");
		stList4.add("规划、基建管理");
		stList4.add("生产定额");
		stList4.add("施工管理");
		stList4.add("安全环保");
		stList4.add("科技管理");
		stList4.add("质量管理");
		stList4.add("标准计量");
		stList4.add("信息工作");		
		map.put("生产技术管理",stList4);
		
		List<String> stList5 = new ArrayList<String>();
		stList5.add("财务审计综合");
		stList5.add("财务管理");
		stList5.add("会计账务");
		stList5.add("审计工作");
		map.put("财务审计",stList5);
		
		List<String> stList6 = new ArrayList<String>();
		stList6.add("人事劳资综合");
		stList6.add("机构、编制");
		stList6.add("人事管理");
		stList6.add("劳动管理");
		stList6.add("工资管理");
		stList6.add("教育培训");	
		map.put("人事劳资",stList6);
		request.setAttribute("map", map); 		
		
		
	}
	public String show(){		
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DocumentURLService documentURLService = (DocumentURLService) context.getBean("documentURLService");
		request.setAttribute("documents", documentURLService.getAll());
		doubleselect();
		return "show";
	}
	public String delete(){		
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DocumentURLService documentURLService = (DocumentURLService) context.getBean("documentURLService");
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		documentURLService.delInfoById(id);//执行删除操作
		show();
		
		return "delete";
	}
	public String save() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DocumentURLService documentURLService = (DocumentURLService) context.getBean("documentURLService");
		for (int i = 0; i < upload.size(); i++) {
			DocumentURL documentURL = new DocumentURL();
			//根据服务器的文件保存地址和源文件名创建目录文件全路径
			String name = this.uploadFileName.get(i);
			String type = request.getParameter("type");
			String subtype = request.getParameter("subtype");
			String path=ServletActionContext.getServletContext().getRealPath(this.getSavePath())+"\\"+name;
			File target=new File(path);			//定义目标文件对象
		//	System.out.println("path:"+path+"/tname:"+name);
			documentURL.setDoc_url(path);
			documentURL.setDoc_name(name);
			User user = (User) request.getSession().getAttribute("global_user");
			documentURL.setDoc_author(user.getUsername());
			documentURL.setDoc_type(type);
			documentURL.setDoc_subtype(subtype);
			documentURLService.saveDocumentURL(documentURL);
			copy(this.upload.get(i), target);		//调用copy()方法，实现文件的写入
		}
		show();
		return "show";
	}
	
	public List<File> getUpload() {
		return upload;
	}
	public void setUpload(List<File> upload) {
		this.upload = upload;
	}
	public List<String> getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(List<String> uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public List<String> getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getSavePath() {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}
	@Override
	public void setServletRequest(HttpServletRequest resquest) {
		// TODO Auto-generated method stub
		this.request = resquest;
	}
}
