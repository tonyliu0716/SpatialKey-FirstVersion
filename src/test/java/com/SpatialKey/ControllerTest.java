package com.SpatialKey;



import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.SpatialKey.dao.LocationDao;

public class ControllerTest extends AbstractTest{
	
	@Autowired
	private LocationDao dao;
	
	@Before
	public void setUp() {
		//use super.setUp method to build the MockMvc Object
		super.setUp();
	}
	
	
	// First, when we send http://localhost:8080, should return "Welcome to SpatialKey!"
	@Test
	public void testController() throws Exception {
		String uri = "/";
		
		MvcResult result = mvc.perform(MockMvcRequestBuilders.get(uri)).andReturn();
		
		String content = result.getResponse().getContentAsString();
		int status = result.getResponse().getStatus();
		
		Assert.assertEquals("failure - expected status 200", 200, status);
		Assert.assertTrue("failure - expected HTTP response body have a value", content.trim().length() > 0);
		
	}
	
	// Second, when we send http://localhost:8080/index, should return index.jsp
	@Test
	public void testIndex() throws Exception {
		String uri = "/index";
		// accept GET method
		MvcResult result = mvc.perform(MockMvcRequestBuilders.get(uri)).andReturn();
		int status = result.getResponse().getStatus();
		
		Assert.assertEquals("failure - expected HTTP response body have a value", 200, status);
	}
	
	
	// send http://localhost:8080/system, using post method should return typeInForm.jsp
	@Test
	public void testSystem() throws Exception {
		String uri = "/system";
		// accept POST method
		MvcResult result = mvc.perform(MockMvcRequestBuilders.post(uri)).andReturn();
		int status = result.getResponse().getStatus();
		
		Assert.assertEquals("failure - expected HTTP response body have a value", 200, status);
	}
	
	//send http://localhost:8080/getLocation/{latitude}/{longitude}
	@Test
	public void testGetLocation() throws Exception {
		String uri = "/getLocation/{latitude}/{longitude}";
		//accept get method
		MvcResult result = mvc.perform(MockMvcRequestBuilders.get(uri, "39", "-105")).andReturn();
		
		int status = result.getResponse().getStatus();
		String context = result.getResponse().getContentAsString();
		
		Assert.assertEquals("failure - expected status 200", 200, status);
		Assert.assertNotNull("failure - expected HTTP response body have a value", context.trim().length() > 0);
	}
}
