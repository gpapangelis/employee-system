package com.george.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.george.dao.LocationDAO;
import com.george.entity.Location;

@Controller
@RequestMapping("/location")
public class LocationController {
	
	//need to inject the employee dao
	@Autowired
	private LocationDAO locationDAO;

	@RequestMapping("/list")
	public String listLocations(Model theModel) {
		
		//get department from the dao
		List<Location> theLocations = locationDAO.getLocations();
		
		
		//add the employees to the model
		theModel.addAttribute("locations", theLocations);
		
		
		return "list-locations";
	}
	
	
}
