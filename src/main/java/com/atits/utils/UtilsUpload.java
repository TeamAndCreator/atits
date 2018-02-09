package com.atits.utils;

import java.io.File;

import javax.servlet.http.HttpServletRequest;


import org.springframework.web.multipart.MultipartFile;



public class UtilsUpload {
	

	public String upload(String string, HttpServletRequest servletRequest) {
		String fileDir="";
//		String path = servletRequest.getServletContext().getRealPath("/notice");// 路径
//		System.out.println(path);
//		//String[] fileArray  = multipartFile.split(","); // 拆分字符为"," ,然后把结果交给数组strArray
//		for (int i = 0; i < fileArray.length; i++) {
//			MultipartFile file = (MultipartFile) new File(fileArray[i]);
//			System.out.println(file.getOriginalFilename());
//			//System.out.println(file.toString());
//		}
		return fileDir;

	}

}
