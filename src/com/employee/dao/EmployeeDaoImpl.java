package com.employee.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.employee.entity.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
    private SessionFactory sessionFactory;	
	
	public void addEmployeeDao(Employee employee) {
		try{
			this.sessionFactory.getCurrentSession().save(employee);
		}
		catch(Exception e){
		 System.out.println("Data is too long");
		}
	}

	@SuppressWarnings("unchecked")
	public List<Employee> getAllEmployees() {
		/* E, Department D where E.employee_dno=D.department_no*/
		return this.sessionFactory.getCurrentSession().createQuery("from Employee").list();
		
	}
	public void deleteEmployeeDao(Integer employeeId) {

		Employee employee = (Employee) sessionFactory.getCurrentSession().load(
				Employee.class, employeeId);
        if (null != employee) {
        	this.sessionFactory.getCurrentSession().delete(employee);
        }
	}

	public void updateEmployeeDao(Employee employee) {
		this.sessionFactory.getCurrentSession().update(employee);
	}

}
