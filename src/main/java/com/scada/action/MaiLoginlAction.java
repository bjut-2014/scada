package com.scada.action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.utils.MailDBOperation;
import com.sun.mail.pop3.POP3Folder;
import com.sun.mail.pop3.POP3Store;

public class MaiLoginlAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private String username;
	private String password;
	private String host;

	private HttpServletRequest request = null;
	private HttpServletResponse response = null;

	public String execute() throws Exception {
		// 连接
		//捕捉登录异常，如果登录失败，返回登录页面
		try {
			 connect();
		} catch (MessagingException e) {
			 this.addFieldError("loginError", "用户名、密码不正确！！");
		 	return "login";
		}
		setBaseMessage();
		return super.execute();
	}

	public String show() {
		return "show";
	}

	// -------邮箱的基本属性------
	public static Folder folder = null;
	public static Folder sendFolder = null;
	public static Store store = null;
	public static Store sendStore = null;
	Message[] messages = null;
	Message[] sendMessages = null;
	List<Message> normalMail;
	List<Message> spam;
	List<Message> sendMail;

	// 连接邮箱
	public void connect() throws Exception {
		Properties props = new Properties();// 准备连接服务器的会话信息
		/*-----------------旧的连接方式--------------------------------*/
		// props.setProperty("mail.store.protocol", "pop3"); // 协议
		// props.setProperty("mail.pop3.port", "110"); // 端口
		// props.setProperty("mail.pop3.host", this.getHost()); // pop3服务器
		/*-----------------------------------------------------------*/
		/*------------------新的连接方式---------------------------------*/
		props.put("mail.smtp.host", "localhost"); // smtp服务器
		props.put("mail.smtp.auth", "true"); // 是否smtp认证
		props.put("mail.smtp.port", "25"); // 设置smtp端口
		props.put("mail.transport.protocol", "smtp"); // 发邮件协议
		props.put("mail.store.protocol", "pop3"); // 收邮件协议
		props.put("mail.store.host", "localhost");
		/*-----------------------------------------------------------*/
		// 创建Session实例对象
		Session session = Session.getInstance(props);
		store = session.getStore();
		//sendStore = session.getStore();
		store.connect("scada.com",username, password);
		//sendStore.connect("scada.com", username, password);
		//Folder[] folders = store.getDefaultFolder().list();
		// 获得收件箱
		folder = store.getFolder("INBOX");
		// 获得发件箱
		//sendFolder = store.getFolder("SENDED");
		/*
		 * Folder.READ_ONLY：只读权限 Folder.READ_WRITE：可读可写（可以修改邮件的状态）
		 */
		folder.open(Folder.READ_WRITE); //打开收件箱
		//sendFolder.open(POP3Folder.READ_WRITE);// 打开收件箱
		// 得到收件箱中的所有邮件,并解析
		messages = folder.getMessages();
		//sendMessages = sendFolder.getMessages();
	}

	// 获得邮件的基本信息
	public void setBaseMessage() throws Exception {
		// 获得收件箱中的邮件总数
		request.setAttribute("allMailCount", folder.getMessageCount());
		// 获得邮件的信息
		request.setAttribute("mailMessages", messages);
		// request.setAttribute("sendMailMessages", sendMessages);
	}

	// 邮箱数据表的查询操作
	ResultSet rs = null;

	public void identifyMailType() throws SQLException {
		rs = MailDBOperation.getAll();
		while (rs.next()) {
			if (rs.getString(5).equals(username + "@scada.com")) {
				// sendMail.add(rs);
			}
		}
		for (Message message : messages) {
			MimeMessage msg = (MimeMessage) message;
		}
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	class UserAuthenticator extends Authenticator {
		@Override
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(username, password);
		}
	}

}
