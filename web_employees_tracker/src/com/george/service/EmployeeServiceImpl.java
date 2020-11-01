package com.george.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.george.dao.EmployeeDAO;
import com.george.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	
	//need to inject employee dao
	@Autowired
	private EmployeeDAO employeeDAO;
	
	
	@Override
	@Transactional
	public List<Employee> getEmployees() {
		return employeeDAO.getEmployees();
	}


	@Override
	@Transactional
	public void saveEmployee(Employee theEmployee) {
		
		employeeDAO.saveEmployee(theEmployee);
		
	}


	@Override
	@Transactional
	public Employee getEmployee(int theId) {
		
		return employeeDAO.getEmployee(theId);
	}

}
