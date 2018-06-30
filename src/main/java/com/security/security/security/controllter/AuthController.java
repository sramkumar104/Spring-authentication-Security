package com.security.security.security.controllter;

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
}
