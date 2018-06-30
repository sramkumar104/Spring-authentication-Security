package com.security.security.security.controllter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthController {
	
	@RequestMapping(value="/")
	public String home() {
		return "index";
	}
	@RequestMapping(value="dashboard")
	public String dashboard() {
		
		return "dashboard";
	}
	@RequestMapping(value="/login")
	public String login(HttpServletRequest request,HttpServletResponse response) {
		return "login";
	}
}
