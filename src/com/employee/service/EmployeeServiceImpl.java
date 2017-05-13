package com.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.employee.dao.EmployeeDao;
import com.employee.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired(required=true)
    private EmployeeDao employeeDao;
	@Transactional
	public void addEmployee(Employee employee) {
		
		employeeDao.addEmployeeDao(employee);
	}
	@Transactional
	public List<Employee> getAllEmployees() {
		
		return employeeDao.getAllEmployees();
	
	}
	@Transactional
	public void deleteEmployee(Integer employeeId) {
		
		employeeDao.deleteEmployeeDao(employeeId);
		
	}
	@Transactional
	public void updateEmployee(Employee employee, String employee_loc) {
		employeeDao.updateEmployeeDao(employee);
		
	}

}
