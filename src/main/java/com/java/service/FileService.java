package com.java.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService {
	
	public Map<String, Object> fileSave(MultipartFile file,String contextPath) {
		System.out.println("FileService.save()");
		contextPath = contextPath.replace("/", "\\");
		// 파일저장 디렉토리
		String saveDir = "C:\\solChan\\workspace-himedia\\upload";
		
		// (1)파일관련 정보 추출 /////////////////////////
		// 오리지널 파일명
		String orgName = file.getOriginalFilename();
		
		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));
		
		// 저장파일명(겹치지 않아야 된다)
		String saveName = System.currentTimeMillis()
				+ UUID.randomUUID().toString()
				+ exName;									// long + tostring() = 문자열
		System.out.println("saveName : " + saveName);		// 169569657902144926a22-4fab-40e1-8f82-5b208c01f9d5.jpg
		
		// 파일 전체경로
		String filePath = saveDir + "\\" + saveName;

		try {
			byte[] fileDate;
			fileDate = file.getBytes();
			
			OutputStream os = new FileOutputStream(filePath);
			BufferedOutputStream bos = new BufferedOutputStream(os);
			
			bos.write(fileDate);
			bos.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("uploaded", true);
		map.put("url", contextPath+"\\upload\\"+saveName);
		System.out.println(map.get("url"));
		return map;
	}

}
