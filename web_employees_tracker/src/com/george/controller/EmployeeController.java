package com.george.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.george.dao.EmployeeDAO;
import com.george.entity.Employee;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	//need to inject the employee dao
	@Autowired
	private EmployeeDAO employeeDAO;

	@RequestMapping("/list")
	public String listEmployees(Model theModel) {
		
		//get employee from the dao
		List<Employee> theEmployees = employeeDAO.getEmployees();
		
		
		//add the employees to the model
		theModel.addAttribute("employees", theEmployees);
		
		
		return "list-employees";
	}
	
	
	@RequestMapping("/listByDep/{deptid}")
	public String listEmployeesByDep(Model theModel, @PathVariable("deptid") int deptid) {
		
		//get employee from the dao
		List<Employee> theEmployees = employeeDAO.getEmployeesByDep(deptid);
		
		
		//add the employees to the model
		theModel.addAttribute("employees", theEmployees);
		
		
		return "list-employees";
	}
	
}
