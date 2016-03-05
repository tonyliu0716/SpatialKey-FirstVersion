package com.SpatialKey.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.SpatialKey.dao.LocationDao;
import com.SpatialKey.entity.ReturnPoint;


@Controller
public class MainController {
	
	@Autowired
	private LocationDao dao;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	@ResponseBody
	public String home() {
		return "Welcome to SpatialKey";
	}
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String findIndex() {
		return "index";
	}
	
	
	@RequestMapping(value="/system", method=RequestMethod.POST)
	public String formPage() {
		return "typeInForm";
	}
	
	@RequestMapping(value="/return", method=RequestMethod.POST)
	public String returnPage() {
		return "typeInForm";
	}
	
	@RequestMapping(value="/getLocation/{latitude}/{longitude}", method=RequestMethod.GET)
	public String getLocation(@PathVariable("latitude") String latitude, @PathVariable("longitude") String longitude, ModelMap map) {
		ReturnPoint point = dao.findCloset(latitude, longitude);
		map.addAttribute("point", point);
		return "result";
	}
	
	@RequestMapping(value="/map",method=RequestMethod.POST)
	public String showInMap(ReturnPoint point, ModelMap map) {
		map.addAttribute("point", point);
		return "map";
	}
	
	//show all the point location in a map, did not finish yet
	@RequestMapping(value="/allpoints", method=RequestMethod.GET)
	public String showAll(ModelMap map) {
		List<ReturnPoint> points = dao.getAllPoints();
		map.addAttribute("points", points);
		return "maps";
	}
}
