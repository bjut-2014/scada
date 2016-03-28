package com.scada.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MailDBOperation {

	public static String url = "jdbc:mysql://localhost:3306/scada";
	public static String username = "root";
	public static String password = "root";
	public static ResultSet rs = null;
	public static Connection con =null;
	public static PreparedStatement ps = null;
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, username,
				password);
		return con;
	}

	public static ResultSet getAll(){
		try {
			ps = getConnection().prepareStatement("SELECT * FROM scada.mail_inbox");
			rs = ps.executeQuery();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static void close(){
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(ps!=null){
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}
