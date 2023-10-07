package com.java.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.service.FileService;

@Controller
public class FileController {

	@Autowired
	FileService fileService;
	
	@ResponseBody
	@RequestMapping("imageUpload")
	public Map<String,Object> imageUpload(@RequestParam(value="upload") MultipartFile file, HttpServletRequest request) {
		System.out.println(file);
		return fileService.fileSave(file,request.getContextPath());
	}
	
}
