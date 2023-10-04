package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.MainDAO;
import com.java.vo.EmployeesVO;

@Service
public class MainService {
	
	@Autowired
	MainDAO mainDAO;

	public EmployeesVO loginAction(EmployeesVO emVO) {
		return mainDAO.loginAction(emVO);
	}

}
