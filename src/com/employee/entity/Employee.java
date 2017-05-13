package com.employee.entity;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="EMP")
public class Employee {
	
	 @Id
	 @Column(name="ENO")
	 private int employee_number;
	     
	 @Column(name="ENAME")
	 private String employee_name;
	 
	 @Column(name="JOB")
	 private String employee_job;
	 
	 @Column(name="JOINDATE")
	 private Date employee_joindate;
	 
	 @Column(name="MOBILE")
	 private Long employee_mobile;
	 
	 @Column(name="DNO")
	 private int employee_dno;
	 
	 public int getEmployee_number() {
		return employee_number;
	}

	public void setEmployee_number(int employee_number) {
		this.employee_number = employee_number;
	}

	public String getEmployee_name() {
		return employee_name;
	}

	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}

	public String getEmployee_job() {
		return employee_job;
	}

	public void setEmployee_job(String employee_job) {
		this.employee_job = employee_job;
	}

	public Date getEmployee_joindate() {
		return employee_joindate;
	}

	public void setEmployee_joindate(Date employee_joindate) {
		this.employee_joindate = employee_joindate;
	}

	public Long getEmployee_mobile() {
		return employee_mobile;
	}

	public void setEmployee_mobile(Long employee_mobile) {
		this.employee_mobile = employee_mobile;
	}

	public int getEmployee_dno() {
		return employee_dno;
	}

	public void setEmployee_dno(int employee_dno) {
		this.employee_dno = employee_dno;
	}

	

}
