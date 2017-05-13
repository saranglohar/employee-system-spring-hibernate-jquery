package com.employee.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DEPT")
public class Department {
	  	@Id
	    @Column(name="DNO")
	    private int department_no;
	  	
	  	@Column(name="DNAME")
	    private String dname;
	 
	    @Column(name="LOC")
	    private String location;
	     
	   	public int getDepartment_no() {
			return department_no;
		}

		public void setDepartment_no(int department_no) {
			this.department_no = department_no;
		}

		public String getDname() {
			return dname;
		}

		public void setDname(String dname) {
			this.dname = dname;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}
}
