package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/personnel")
@Controller
public class PersonnelController {
	
	@RequestMapping("")
	public String management() {
		
		return "personnel/management";
	}

}
