package com.employee.dao;

import java.util.List;

import com.employee.entity.Employee;

public interface EmployeeDao {
	
    public void addEmployeeDao(Employee employee);
    public List<Employee> getAllEmployees();
    public void deleteEmployeeDao(Integer employeeId);
	public void updateEmployeeDao(Employee employee);

}
