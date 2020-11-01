package com.george.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.george.entity.Department;

@Transactional
@Repository
public class DepartmentDAOImpl implements DepartmentDAO {

	//inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Department> getDepartments() {
		
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession(); 
		
		//create a query
		Query<Department> theQuery = 
				currentSession.createQuery("from Department", Department.class);
		
		//execute query and get result list
		List<Department> departments = theQuery.getResultList();
		
		
		//return the results
		return departments;
		
		
	}

	//add for search by deptid   (prosoxh sto id)
	/*@Override
	public List<Employee> getEmployeesByDep(int deptid) {
		
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession(); 
				
		//create a query
		Query<Employee> theQuery = 
						currentSession.createQuery("from Employee WHERE deptid = 1", Employee.class);
		
				
		//execute query and get result list
		List<Employee> employees = theQuery.getResultList();
				
				
		//return the results
		return employees;
		
	}    */

}
