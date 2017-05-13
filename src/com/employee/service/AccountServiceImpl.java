package com.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.employee.dao.AccountDAO;
import com.employee.entity.Account;


@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired(required=true)
    private AccountDAO accountDAO;
	
	@Transactional
	public boolean login(String username, String password) {		
		String database_password=accountDAO.getPassword(username);		
		if(password.equals(database_password))	{
			return true;
		}
		return false;
	}

	@Transactional
	public void addEmployee(Account employee) {
		accountDAO.addEmployee(employee);
	}

	@Transactional
	public List<Account> getAllEmployees() {
		return accountDAO.getAllEmployees();
	}

	@Transactional
	public void deleteEmployee(Integer employeeId) {
		accountDAO.deleteEmployee(employeeId);
	}

	public void setEmployeeDAO(AccountDAO employeeDAO) {
		this.accountDAO = employeeDAO;
	}

	
}
