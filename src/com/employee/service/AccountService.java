package com.employee.service;

import java.util.List;

import com.employee.entity.Account;


public interface AccountService {
	public boolean login(String username, String password);
	public void addEmployee(Account employee);
    public List<Account> getAllEmployees();
    public void deleteEmployee(Integer employeeId);
}
