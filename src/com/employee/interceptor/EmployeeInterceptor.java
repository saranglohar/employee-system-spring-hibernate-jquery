package com.employee.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.web.portlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class EmployeeInterceptor extends HandlerInterceptorAdapter {
	
	Logger log=Logger.getLogger(EmployeeInterceptor.class);
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		String uri = request.getRequestURI();
		HttpSession session=request.getSession();
		log.info("In PreHandler Session Attribute is : "+session.getAttribute("username"));
		
		if(session.getAttribute("username")!=null)
			return true;
		
		if(session.getAttribute("username")==null && (uri.endsWith("login") || uri.endsWith("/") || uri.endsWith("loginpage")))
		{				
			return true;
		}		
		
		log.info("Please Login First");	
		response.sendRedirect("/Employee/loginpage");
		return false;		
	}
	
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
	     System.out.println("Post Handle");
	
	}
}
 