package com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.java.service.PersonnelService;
import com.java.vo.DepartmentVO;
import com.java.vo.EmployeesVO;
import com.java.vo.TeamsVO;

@RequestMapping("/personnel")
@Controller
public class PersonnelController {
	
	@Autowired
	PersonnelService peronnelService;
	
	@RequestMapping("")
	public String management(Model model) throws JsonProcessingException {
		List<DepartmentVO> deVO = peronnelService.departmentSelectList();
		String teamsJson = peronnelService.employeeSelectList();
		model.addAttribute("deVO",deVO);
		model.addAttribute("emVO",teamsJson);
		System.out.println(teamsJson);
		return "personnel/management";
	}
	
	@RequestMapping("/{no}")
	public String employeeDetail(@PathVariable("no") int no, Model model) throws JsonProcessingException {
		System.out.println(no);
		EmployeesVO emVO = peronnelService.employeeSelectOne(no);
		List<DepartmentVO> deVO = peronnelService.departmentSelectList();
		String teamsJson = peronnelService.teamsSelectList();
		model.addAttribute("deVO",deVO);
		model.addAttribute("teVO",teamsJson);
		model.addAttribute("emVO",emVO);
		return "personnel/employeeDetail";
	}
	
	@RequestMapping("/addition")
	public String employeeAddition(Model model) throws JsonProcessingException {
		List<DepartmentVO> deVO = peronnelService.departmentSelectList();
		String teamsJson = peronnelService.teamsSelectList();
		model.addAttribute("deVO",deVO);
		model.addAttribute("teVO",teamsJson);
		return "personnel/employeeAddition";
	}
	
	@RequestMapping("/insertEmployee")
	public String insertEmployee(@ModelAttribute EmployeesVO emVO, @RequestParam("teamId") int id, Model model) {
		TeamsVO teVO = new TeamsVO();
		teVO.setId(id);
		emVO.setTeVO(teVO);
		System.out.println(emVO);
		int count = peronnelService.insertEmployee(emVO);
		model.addAttribute("count",count);
		return "redirect:/personnel";
	}
	
	@RequestMapping("/modifyEmployee")
	public String modifyEmplyoee(@ModelAttribute EmployeesVO emVO, @RequestParam("teamId") int id) {
		TeamsVO teVO = new TeamsVO();
		teVO.setId(id);
		emVO.setTeVO(teVO);
		System.out.println(emVO);
		int count = peronnelService.modifyEmployee(emVO);
		
		return "redirect:/personnel";
	}
	
}
