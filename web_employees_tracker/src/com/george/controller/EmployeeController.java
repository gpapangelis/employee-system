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

import com.george.dao.EmployeeDAO;
import com.george.entity.Employee;
import com.george.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	//need to inject our employee service
	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/list")
	public String listEmployees(Model theModel) {
		
		//get employee from the service
		List<Employee> theEmployees = employeeService.getEmployees();
		
		
		//add the employees to the model
		theModel.addAttribute("employees", theEmployees);
		
		
		return "list-employees";
	}
	
	
	//search employee by department method
	/*
	@RequestMapping("/listByDep/{deptid}")
	public String listEmployeesByDep(Model theModel, @PathVariable("deptid") int deptid) {
		
		//get employee from the dao
		List<Employee> theEmployees = employeeDAO.getEmployeesByDep(deptid);
		
		
		//add the employees to the model
		theModel.addAttribute("employees", theEmployees);
		
		
		return "list-employees";
	}
	*/
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		
		//create the model atribute to bind form data
		Employee theEmployee = new Employee();
		
		theModel.addAttribute("employee", theEmployee);
		
		return "employee-form";
		
	}
	
	@PostMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee theEmployee) {
		
		//save the employee using service
		employeeService.saveEmployee(theEmployee);
		
		return "redirect:/employee/list";
	}
	
		
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("employeeId") int theId,
										Model theModel) {
		
		//get the employee from the database
		Employee theEmployee = employeeService.getEmployee(theId);
		
		//set employee as a model attribute to pre-populate the form
		theModel.addAttribute("employee", theEmployee);
		
		//send to the form
		return "employee-form";
		
		
		
	}
	
	@GetMapping("/delete")
	public String deleteEmployee(@RequestParam("employeeId") int theId) {
		
		//delete
		employeeService.deleteEmployee(theId);
		
		return "redirect:/employee/list";
		
	}
	
	
}
