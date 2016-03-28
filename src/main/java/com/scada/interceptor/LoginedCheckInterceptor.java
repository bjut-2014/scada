package com.scada.interceptor;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.scada.domain.User;

/**
 * session过期
 */
public class LoginedCheckInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//取得请求的URL
        String url = ServletActionContext.getRequest().getRequestURL().toString();
        HttpServletResponse response=ServletActionContext.getResponse();
        response.setHeader("Pragma","No-cache");          
        response.setHeader("Cache-Control","no-cache");   
        response.setHeader("Cache-Control", "no-store");   
        response.setDateHeader("Expires",0);
        User user = null;
        //对登录与注销请求直接放行,不予拦截
        if (url.indexOf("loginAction_loginValidate")!=-1 || url.indexOf("loginAction_safeExit")!=-1 ){
            return invocation.invoke();
        }
        else{
            //验证Session是否过期
            if(!ServletActionContext.getRequest().isRequestedSessionIdValid()){
                //session过期,转向session过期提示页,最终跳转至登录页面
                return "tologin";
            }
            else{
                user = (User)ServletActionContext.getRequest().getSession().getAttribute("global_user");
                //验证是否已经登录
                if (user==null){
                    //尚未登录,跳转至登录页面
                    return "tologin";
                }else{                    
                    return invocation.invoke();
                                
                }                
            }            
        }
	}

}
