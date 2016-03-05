package com.SpatialKey.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.SpatialKey.util.JdbcUtil;
import com.SpatialKey.entity.ReturnPoint;


public class ReadPoints {
	private static String file = "src/main/resources/locations.csv";
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public static List<ReturnPoint> read() throws SQLException {
		List<ReturnPoint> points = new ArrayList<ReturnPoint>();
		
		try {
			Connection conn = JdbcUtil.getConnection();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM CSVREAD('" + file + "')");
			ResultSet rs = ps.executeQuery();
			
			// using a List to store the value of points
			while(rs.next()) {
				String latitude = rs.getString("latitude");
				String longitude = rs.getString("longitude");
				String TIV = rs.getString("TIV");
				String occupancy = rs.getString("occupancy");
				String year = rs.getString("year built");
				String square = rs.getString("square footage");
				String stories = rs.getString("number of stories");
				String construction = rs.getString("construction");
				
				//create a new object 
				ReturnPoint point = new ReturnPoint();
				point.setLatitude(latitude);
				point.setLongitude(longitude);
				point.setTIV(TIV);
				point.setOccupancy(occupancy);
				point.setYear(year);
				point.setSquare(square);
				point.setStories(stories);
				point.setConstruction(construction);
				
				points.add(point);
			}
			// close the database
			JdbcUtil.close(conn);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		return points;
		
		
	}
}
