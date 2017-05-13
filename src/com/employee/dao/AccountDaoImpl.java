package com.employee.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.employee.entity.Account;


@Repository
public class AccountDaoImpl implements AccountDAO  {

	@Autowired
    private SessionFactory sessionFactory;
	
	public void addEmployee(Account account) {
		this.sessionFactory.getCurrentSession().save(account);
	}

	@SuppressWarnings("unchecked")
	public List<Account> getAllEmployees() {
		return this.sessionFactory.getCurrentSession().createQuery("from Account").list();
	}
	
	@SuppressWarnings("unchecked")
	public String getPassword(String username) {
		
		@SuppressWarnings("rawtypes")
		List list=this.sessionFactory.getCurrentSession().createQuery("select a.password from Account a where a.username = '"+username+"'").list();
		String password=String.join("", list);
			
		return password;
	}
	
	public void deleteEmployee(Integer employeeId) {
		Account employee = (Account) sessionFactory.getCurrentSession().load(
				Account.class, employeeId);
        if (null != employee) {
        	this.sessionFactory.getCurrentSession().delete(employee);
        }
	}

	
	
	

}
