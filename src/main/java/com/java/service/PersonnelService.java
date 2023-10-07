package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.dao.PersonnelDAO;
import com.java.vo.DepartmentVO;
import com.java.vo.EmployeesVO;
import com.java.vo.TeamsVO;

@Service
public class PersonnelService {
	
	@Autowired
	PersonnelDAO pesonnelDAO;
	
	public List<DepartmentVO> departmentSelectList() {
		return pesonnelDAO.departmentSelectList();
	}
	
	public String teamsSelectList() throws JsonProcessingException {
		ObjectMapper objectMapper = new ObjectMapper();
		String teamsJson = objectMapper.writeValueAsString(pesonnelDAO.teamsSelectList());
		return teamsJson;
	}

	public int insertEmployee(EmployeesVO emVO) {
		return pesonnelDAO.insertEmployee(emVO);
	}

	public String employeeSelectList() throws JsonProcessingException {
		ObjectMapper objectMapper = new ObjectMapper();
		String teamsJson = objectMapper.writeValueAsString(pesonnelDAO.employeeSelectList());
		return teamsJson;
	}

	public EmployeesVO employeeSelectOne(int no) {
		return pesonnelDAO.employeeSelectOne(no);
	}

	public int modifyEmployee(EmployeesVO emVO) {
		return pesonnelDAO.modifyEmployee(emVO);
	}

}
