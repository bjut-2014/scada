package com.scada.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.User;
import com.scada.domain.UserRight;
import com.scada.service.SysConfigService;
import com.scada.service.UserRightService;
import com.scada.service.UserService;
import com.scada.utils.SystemLog;

public class LoginAction extends ActionSupport  implements ServletRequestAware,ServletResponseAware {

	private UserService userService;
	private UserRightService userRightService;
	private SysConfigService sysConfigService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;
	private String username;
	private String password;

	/**
	 * 登录信息验证
	 * @return 登录信息正确的话，跳转到系统的主页面；登录信息错误的话，返回登录页面
	 */
	public String loginValidate(){
		User user = userService.findUserByLoginName(username);
		if(user==null || !user.getLoginPwd().equals(password)){
			this.addFieldError("loginError", "用户名、密码不正确！！");
			return "error";
		}
		//设置系统标题以及底部信息
		request.setAttribute("sysConfigInfo", sysConfigService.get(1));
		//设置session的有效时间
		HttpSession userSession = request.getSession();
		userSession.setMaxInactiveInterval(sysConfigService.get(1).getSessionTime());
		//将成功登录的用户添加到session中
		request.getSession().setAttribute("global_user", user);
		UserRight userRight = userRightService.findUserRightById(user.getRightsId());
		//将该用户的权限添加到session中
		request.getSession().setAttribute("global_user_userRight", userRight);
		//将登陆人的姓名记录到日志中
		SystemLog.setSystemLog(user.getUsername(), this, "登录了系统");
		//记录此时使用系统的人的名字
		SystemLog.systemGlobalUser = user.getUsername();
		return "home";
	}
	
	/**
	 * 安全退出，移除session中的用户以及用户权限
	 * @return 跳转到登录页面
	 */
	public String safeExit(){
		//将退出系统的人的姓名记录到日志中
		SystemLog.setSystemLog(((User)request.getSession().getAttribute("global_user")).getUsername(), this, "退出了系统");
		request.getSession().removeAttribute("global_user");
		request.getSession().removeAttribute("global_user_userRight");
		return "exit";
	}
	

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserRightService getUserRightService() {
		return userRightService;
	}

	public void setUserRightService(UserRightService userRightService) {
		this.userRightService = userRightService;
	}
	
	public SysConfigService getSysConfigService() {
		return sysConfigService;
	}

	public void setSysConfigService(SysConfigService sysConfigService) {
		this.sysConfigService = sysConfigService;
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
}
