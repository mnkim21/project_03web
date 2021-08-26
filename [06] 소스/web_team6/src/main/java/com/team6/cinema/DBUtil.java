package com.team6.cinema;

import java.sql.Connection;


import java.sql.DriverManager;

/***
 * JDBC Connection 클래스
 * @author 6조
 *
 */
public class DBUtil {

	public static Connection open() {

		Connection conn = null;

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "web_team6";
		String pw = "java1234";

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			
			return conn;

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	public static Connection open(String server, String id, String pw) {

		Connection conn = null;

		String url = "jdbc:oracle:thin:@" + server + ":1521:xe";
	
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pw);
			
			return conn;

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}




