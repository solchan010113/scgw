package com.java.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.service.BoardService;
import com.java.vo.BoardVO;
import com.java.vo.EmployeesVO;

@RequestMapping("board")
@Controller
public class BoardController {
	
	@Autowired 
	BoardService boardService;
	
	@RequestMapping("")
	public String boardList(Model model) {
		List<BoardVO> list = boardService.getBoardList();
		System.out.println(list);
		model.addAttribute("list",list);
		return "board/boardList";
	}
	
	@RequestMapping("write")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	@ResponseBody
	@RequestMapping("imageUpload")
	public Map<String,Object> imageUpload(@RequestParam(value="upload") MultipartFile file, HttpServletRequest request) {
		System.out.println(file);
		return boardService.fileSave(file,request.getContextPath());
	}
	
	@RequestMapping("writeAction")
	public String writeAction(@ModelAttribute BoardVO boVO, HttpSession session) {
		boVO.setEmVO((EmployeesVO)session.getAttribute("authUser"));
		boardService.writeAction(boVO);
		return "redirect:/board";
	}
	
	
	@RequestMapping("/{id}")
	public String boardDetail(@PathVariable int id, Model model) {
		BoardVO boardVO = boardService.boardSelectOne(id);
		model.addAttribute("boardVO",boardVO);
		System.out.println(boardVO);
		return "board/boardDetail";
	}

}
