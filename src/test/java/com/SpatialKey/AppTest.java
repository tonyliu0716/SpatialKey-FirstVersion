package com.SpatialKey;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.SpatialKey.dao.LocationDao;
import com.SpatialKey.entity.ReturnPoint;
import com.SpatialKey.util.JdbcUtil;
import com.SpatialKey.util.ReadPoints;

/**
 * Unit test for simple App.
 */


public class AppTest extends AbstractTest{
	
	@Autowired
	private LocationDao dao;
	
	//First thing we should test the JdbcUtil.getConnection, to see if it is null or not
	@Test
	public void testJdbcUtil() {
		Connection conn = null;
		try {
			Assert.assertNotNull("failure - expected not null", conn = JdbcUtil.getConnection());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		JdbcUtil.close(conn);
	}
	
	//Second, test ReadPoints class
	@Test
	public void testReadPoints() {
		List<ReturnPoint> points = new ArrayList<ReturnPoint>();
		try {
			points = ReadPoints.read();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Assert.assertNotNull("failure - expected not null" ,points);
	}
	
	//Test dao object, to check if it is injected correctly into this test class
	@Test
	public void testDao() {
		Assert.assertNotNull("failure - expected not null", dao);
	}
	
	
	//Test findAll method
	@Test
	public void testFindAll() {
		List<ReturnPoint> points = dao.getAllPoints();
		Assert.assertNotNull("failure - expected not null", points);
	}
	
	//Test findCloset method
	@Test
	public void testFindOne() {
		ReturnPoint point = dao.findCloset("39", "-105");
		Assert.assertNotNull("failure - expected not null", point);
	}
	
}
