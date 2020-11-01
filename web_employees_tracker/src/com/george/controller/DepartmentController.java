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

import com.george.dao.DepartmentDAO;
import com.george.entity.Department;
import com.george.entity.Employee;
import com.george.entity.Location;
import com.george.service.DepartmentService;
import com.george.service.LocationService;

@Controller
@RequestMapping("/department")
public class DepartmentController {
	
	//need to inject the employee service
	@Autowired
	private DepartmentService departmentService;

	@RequestMapping("/list")
	public String listDepartments(Model theModel) {
		
		//get department from the service
		List<Department> theDepartments = departmentService.getDepartments();
		
		
		//add the employees to the model
		theModel.addAttribute("departments", theDepartments);
		
		
		return "list-departments";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		
		//create the model atribute to bind form data
		Department theDepartment = new Department();
						
		theModel.addAttribute("department", theDepartment);
		
		return "department-form";
		
	}
	
	@PostMapping("/saveDepartment")
	public String saveDepartment(@ModelAttribute("department") Department theDepartment) {
		
		//save the employee using service
		departmentService.saveDepartment(theDepartment);
		
		return "redirect:/department/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("departmentId") int theId,
										Model theModel) {
		
		//get the employee from the database
		Department theDepartment = departmentService.getDepartment(theId);
		
		//set employee as a model attribute to pre-populate the form
		theModel.addAttribute("department", theDepartment);
		
		//send to the form
		return "department-form";
		
		
		
	}
	
}
