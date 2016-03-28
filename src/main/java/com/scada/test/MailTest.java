package com.scada.test;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import javax.mail.Multipart;
import javax.mail.Part;
import javax.mail.internet.MimeMessage;
import org.junit.Test;
import com.scada.utils.MailDBOperation;

public class MailTest {

	@Test
	public void testMail() throws Exception{
		ResultSet rs = MailDBOperation.getAll();
		if(rs.next()){
			rs.next();
			Blob blob = rs.getBlob("message_attributes");
			int bolblen = (int) blob.length();  
			byte[] data = blob.getBytes(1, bolblen);  
			String content = new String(data);
//			MimeMessage msg = (MimeMessage) blob;
//			Part part = msg;
//			Multipart multipart = (Multipart) part.getContent();
//			System.out.println(multipart.getBodyPart(1).getContent());
			System.out.println(content);
		}  
	}
}
	

