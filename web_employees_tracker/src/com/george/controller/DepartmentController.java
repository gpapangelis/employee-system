package com.george.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.george.dao.DepartmentDAO;
import com.george.entity.Department;

@Controller
@RequestMapping("/department")
public class DepartmentController {
	
	//need to inject the employee dao
	@Autowired
	private DepartmentDAO departmentDAO;

	@RequestMapping("/list")
	public String listDepartments(Model theModel) {
		
		//get department from the dao
		List<Department> theDepartments = departmentDAO.getDepartments();
		
		
		//add the employees to the model
		theModel.addAttribute("departments", theDepartments);
		
		
		return "list-departments";
	}
	
	
}
