package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.service.MainService;
import com.java.vo.EmployeesVO;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@RequestMapping("login")
	public String loginPage() {
		System.out.println("dff");
		return "main/login";
	}
	
	@ResponseBody
	@RequestMapping("loginAction") 
	public boolean loginAction(@ModelAttribute EmployeesVO emVO, HttpSession session) {
		EmployeesVO employeesVO = mainService.loginAction(emVO);
		boolean chk = employeesVO == null;
		if(!chk) {
			session.setAttribute("authUser", employeesVO);
		}
		return chk;
	}
	
	@RequestMapping("main")
	public String main(HttpSession session) {
		return "main/main";
	}

}
