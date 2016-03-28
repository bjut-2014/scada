package com.scada.utils;

import org.apache.log4j.Logger;
import org.apache.log4j.MDC;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;

public class SystemLog {

	public static String systemGlobalUser = "";
	
	public SystemLog(){}
	
	/**
	 * 配置系统日志函数 =
	 * @param username 操作人员
	 * @param object 涉及的类
	 * @param msg 涉及的函数
	 * @param isSuccessed 是否成功
	 */
	public static void setSystemLog(String username,Object object,String msg){
		MDC.put("username", username);
		Logger.getLogger(object.getClass()).info(msg);
	}
	
	/**
	 * 使用spring的aop，为系统的所有增加、删除以及更新操作添加日志记录
	 * @param joinPoint 可以获得被调用的方法的信息
	 */
	public void afterReturnLog(JoinPoint joinPoint){
		//调用的方法名字
		String methodName = joinPoint.getSignature().getName();
		//调用的类名字
		String className = joinPoint.getTarget().getClass().toString();
		setSystemLog(systemGlobalUser,this,"调用了"+className+"的"+methodName+"方法");
	}
	
}
