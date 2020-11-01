package com.george.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.george.entity.Employee;
import com.george.entity.Location;

@Transactional
@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	//inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Employee> getEmployees() {
		
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession(); 
		
		//create a query
		Query<Employee> theQuery = 
				currentSession.createQuery("from Employee", Employee.class);
		
		//execute query and get result list
		List<Employee> employees = theQuery.getResultList();
		
		
		//return the results
		return employees;
		
		
	}

	@Override
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
		
	}

	@Override
	public void saveEmployee(Employee theEmployee) {
		
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//save the employee
		currentSession.saveOrUpdate(theEmployee);
		
	}

	@Override
	public Employee getEmployee(int theId) {
		
				// get the current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				
				// now retrieve /read from database using the primary key
				Employee theEmployee = currentSession.get(Employee.class, theId);
				
				return theEmployee;
	}

	@Override
	public void deleteEmployee(int theId) {
		
		//get session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//delete by id
		Query theQuery = currentSession.createQuery("delete from Employee where id=:employeeId");
		theQuery.setParameter("employeeId", theId);
		theQuery.executeUpdate();
		
	}

}
