package com.SpatialKey.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtil {
	
	private static final String driver = "org.h2.Driver";
	private static final String url = "jdbc:h2:~/test";
	private static final String username = "sa";
	private static final String password = "";
	
	
	
	//connection H2 database
	public static Connection getConnection() throws ClassNotFoundException {
		Connection conn = null;
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, username, password);
		} catch(SQLException ex) {
			ex.printStackTrace();
		}

		return conn;
	}
	
	//close H2 database
	public static void close(Connection conn) {
		if(conn == null) {
			return;
		}
		
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
