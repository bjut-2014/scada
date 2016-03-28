package com.scada.test;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.scada.domain.MachineRoom;
import com.scada.domain.SpamIdentify;
import com.scada.domain.User;
import com.scada.domain.UserRight;
import com.scada.service.MachineRoomService;
import com.scada.service.SpamIdentifyService;
import com.scada.service.UserRightService;
import com.scada.service.UserService;


public class SessionFactoryTest {

	@Test
	public void testSessionFactory() throws SQLException{
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory");
		
		List list = sessionFactory.openSession().createSQLQuery("select * from sys_log").list();
		System.out.println(list.get(0));
	}
	
	@Test
	public void testMachineRoom(){
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		MachineRoomService machineRoomService = (MachineRoomService) context.getBean("machineRoomService");
		MachineRoom machineRoom = new MachineRoom();
		machineRoom.setName("机房4");
		machineRoom.setPosition("机房4号房");
		machineRoom.setRemark("就是一个备注而已4");
		machineRoomService.saveMachineRoom(machineRoom);
	}
	
	@Test
	public void testMail(){
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		SpamIdentifyService spamIdentifyService = (SpamIdentifyService) context.getBean("spamIdentifyService");
		SpamIdentify spamIdentify = new SpamIdentify();
		spamIdentify.setField("理财");
		spamIdentifyService.save(spamIdentify);
	}
	
	@Test
	public void testUser(){
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService = (UserService) context.getBean("userService");
		User user = new User();
		user.setUsername("menghan");
		user.setLoginName("meng");
		user.setLoginPwd("han");
		user.setAddress("平谷");
		user.setBirthday("");
		user.setContactTel("15001185667");
		user.setSex("男");
		user.setIsDuty("否");
		user.setEmail("menghanmh@qq.com");
		user.setRemark("无");
		user.setRightsId(5);
		user.setOnDutyDate(new Date());
		userService.save(user);
	}
	
	@Test
	public void testUserRight(){
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserRightService userRightService = (UserRightService) context.getBean("userRightService");
		UserRight userRight = new UserRight();
		
		userRight.setRightId(5);
		userRight.setDataAcquisition(false);
		userRight.setCoordinatedDispatch(true);
		userRight.setUnifiedDatabase(false);
		userRight.setApplicationShow(true);
		userRight.setServiceOperation(true);
		userRight.setCustomerService(false);
		userRight.setComprehensiveOffice(true);
		userRight.setWanSystem(true);
		userRight.setWebsiteSystem(false);
		userRight.setMailSystem(true);
		
		userRightService.save(userRight);
	}
}
