package com.employee.dao;

import java.util.List;

import com.employee.entity.Account;


public interface AccountDAO 
{
	public String getPassword(String username);
    public void addEmployee(Account employee);
    public List<Account> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
}