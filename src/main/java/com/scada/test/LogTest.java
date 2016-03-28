package com.scada.test;

import org.apache.log4j.Logger;
import org.junit.Test;

import com.scada.utils.SystemLog;

public class LogTest {

	@Test
	public void testLog(){
		SystemLog.setSystemLog("mh",this, "≤‚ ‘2");
	}
	
}
