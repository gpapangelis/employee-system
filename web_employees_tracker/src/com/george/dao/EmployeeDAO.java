package com.george.dao;

import java.util.List;

import com.george.entity.Employee;

public interface EmployeeDAO {

	public List<Employee> getEmployees();

	public List<Employee> getEmployeesByDep(int deptid);
	
}
