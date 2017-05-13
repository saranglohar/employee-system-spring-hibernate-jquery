package com.employee.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.employee.entity.Account;
import com.employee.service.AccountService;
import com.sun.xml.internal.ws.util.StringUtils;

@Controller
public class AccountController {	
	
	Logger log=Logger.getLogger(AccountController.class);
	
	@Autowired(required=true)
	private AccountService accountService;	
	
	@RequestMapping("/")
	public ModelAndView show() {	
		
		log.info("Welcome controller");		
		ModelAndView mv = new ModelAndView("login_page");
		return mv;
	}	
/*----------------------------------------------------------------------Login----------------------------------------------------------------	*/
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginAccount(@RequestParam ("username") String username,@RequestParam ("password") String password, HttpServletRequest request) {	
		 
		log.info(username);
		log.info(password);
		
		if(accountService.login(username, password))
		{	
			HttpSession session=request.getSession(); 
			log.info("Session is : "+session.getId());		 
	        session.setAttribute("username",StringUtils.capitalize(username));	        
			ModelAndView mv = new ModelAndView("redirect:/mainboard");			
			 return mv;
		}
		
		ModelAndView mv = new ModelAndView("redirect:/loginpage");
		mv.addObject("message","Username Password Incorrect");
		return mv;		
	}
/*----------------------------------------------------------------------Logout----------------------------------------------------------------	*/		
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {			
		log.info("Welcome controller");  
        session.removeAttribute("username");
    	log.info("Session Invalidated) : "+session.getAttribute("username")+" Id :"+session.getId());
		ModelAndView mv = new ModelAndView("login_page");
		return mv;
	}

/*----------------------------------------------------------------------Register----------------------------------------------------------------	*/		
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerAccount(@ModelAttribute ("account") Account account) {			
		
		accountService.addEmployee(account);			
		ModelAndView mv = new ModelAndView("login_page");
		mv.addObject("message",account.getUsername());
		return mv;
	}
	
	

	@RequestMapping("/loginpage")
	public ModelAndView loginpage(HttpSession session) {			
		log.info("Employee controller");	
		ModelAndView mv = new ModelAndView("login_page");
		return mv;
	}
}
