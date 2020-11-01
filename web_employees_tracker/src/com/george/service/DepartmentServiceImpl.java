package com.george.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.george.dao.DepartmentDAO;
import com.george.entity.Department;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	
	//need to inject employee dao
	@Autowired
	private DepartmentDAO departmentDAO;
	
	
	@Override
	@Transactional
	public List<Department> getDepartments() {
		return departmentDAO.getDepartments();
	}


	@Override
	@Transactional
	public void saveDepartment(Department theDepartment) {
		
		departmentDAO.saveDepartment(theDepartment);
		
	}


	@Override
	@Transactional
	public Department getDepartment(int theId) {
		// TODO Auto-generated method stub
		return departmentDAO.getDepartment(theId);
	}

}
