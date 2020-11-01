package com.george.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.george.dao.LocationDAO;
import com.george.entity.Employee;
import com.george.entity.Location;
import com.george.service.LocationService;

@Controller
@RequestMapping("/location")
public class LocationController {
	
	//need to inject the employee service
	@Autowired
	private LocationService locationService;
	

	@RequestMapping("/list")
	public String listLocations(Model theModel) {
		
		//get department from the service
		List<Location> theLocations = locationService.getLocations();
		
		
		//add the employees to the model
		theModel.addAttribute("locations", theLocations);
		
		
		return "list-locations";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		//create the model atribute to bind form data
		Location theLocation = new Location();
				
		theModel.addAttribute("location", theLocation);
		
		return "location-form";
		
	}
	
	@PostMapping("/saveLocation")
	public String saveLocation(@ModelAttribute("location") Location theLocation) {
		
		//save the employee using service
		locationService.saveLocation(theLocation);
		
		return "redirect:/location/list";
	}

	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("locationId") int theId,
										Model theModel) {
		
		//get the employee from the database
		Location theLocation = locationService.getLocation(theId);
		
		//set employee as a model attribute to pre-populate the form
		theModel.addAttribute("location", theLocation);
		
		//send to the form
		return "location-form";
		
		
		
	}
	
	
	
}
