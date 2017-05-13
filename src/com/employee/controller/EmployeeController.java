package com.employee.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.employee.entity.Employee;
import com.employee.service.EmployeeService;

@Controller
@SessionAttributes({"session"})
public class EmployeeController {
	
	Logger log=Logger.getLogger(AccountController.class);
	
	@Autowired(required=true)
	private EmployeeService employeeService;
/*-----------------------------------------------------------Displaying Record on Dashbaord---------------------------------------------	*/	
	@RequestMapping(value = "/mainboard", method = RequestMethod.GET)                  //.............Dashboard
	public String listEmployees(ModelMap map, HttpSession session) 
	{
		log.info("Employee Controller");
		map.addAttribute("employeeList", employeeService.getAllEmployees());			
		return "dashboard";
	}
/*-------------------------------------------------------------------CRUD Operations---------------------------------------------	*/
	/*-----------------------Delete Operations-------------*/
	
	@RequestMapping("/delete")
	@ResponseBody
	public String deleteEmplyee(@RequestParam("employee_number") Integer employee_number)
	{	
		employeeService.deleteEmployee(employee_number);		
		return "Deleted Successfully from Controller";
	}
	
	/*-----------------------Update Operations-------------*/
	@RequestMapping("/update")
	@ResponseBody
	public String updateEmplyee(@RequestParam("employee_number") Integer employee_number,
			                    @RequestParam("employee_name") String employee_name,
			                    @RequestParam("employee_job") String employee_job,
			                    @RequestParam("employee_joindate") Date employee_joindate,
			                    @RequestParam("employee_mobile") Long employee_mobile,
			                    @RequestParam("employee_dno") Integer employee_dno,
			                    @RequestParam("employee_loc") String employee_loc) {
		log.info("updateController called");	
		Employee employee=new Employee();
		employee.setEmployee_number(employee_number);
		employee.setEmployee_name(employee_name.trim());		
		employee.setEmployee_job(employee_job);
		employee.setEmployee_joindate(employee_joindate);
		employee.setEmployee_mobile(employee_mobile);
		employee.setEmployee_dno(employee_dno);
		
		employeeService.updateEmployee(employee, employee_loc);
		
		return "Updated Successfully";
	}
	/*-----------------------Create Operations-------------*/
	
	@RequestMapping("/create")
	@ResponseBody
	public String createEmployee(@RequestParam("employee_number") Integer employee_number,
			                    @RequestParam("employee_name") String employee_name,
			                    @RequestParam("employee_job") String employee_job,
			                    @RequestParam("employee_joindate") Date employee_joindate,
			                    @RequestParam("employee_mobile") Long employee_mobile,
			                    @RequestParam("employee_dno") Integer employee_dno) {
		
		log.info("createController called");		
		Employee employee=new Employee();
		employee.setEmployee_number(employee_number);
		employee.setEmployee_name(employee_name);
		employee.setEmployee_job(employee_job);
		employee.setEmployee_joindate(employee_joindate);
		employee.setEmployee_mobile(employee_mobile);
		employee.setEmployee_dno(employee_dno);
		
		employeeService.addEmployee(employee);
		
		return "Record Inserted SuccessFully";
	}
/*----------------------------------------------Pages---------------------------------------------------------------------*/	
	@RequestMapping(value = "/page", method = RequestMethod.GET)
	@ResponseBody
	public String page(ModelMap map) 
	{
		log.info("Employee Controller");
		
		return "pages";
	}
	
	@RequestMapping(value = "/content", method = RequestMethod.GET)
	public String content(ModelMap map) 
	{
		log.info("Employee Controller");		
		return "content";
	}
	
	
}
