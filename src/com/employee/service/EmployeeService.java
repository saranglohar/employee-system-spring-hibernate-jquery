package com.employee.service;

import java.util.List;

import com.employee.entity.Employee;

public interface EmployeeService {
	public void addEmployee(Employee employee);
    public List<Employee> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
	public void updateEmployee(Employee employee, String employee_loc);
}
