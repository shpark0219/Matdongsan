package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.LandDTO;


public class SearchCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[SearchCon]");
		// 0. post 방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1. 파라미터 수집
		String input = request.getParameter("SearchInput");		
		
//		LandDTO dto = new LandDTO(input);
		
		
		
		
		
		
		
		
		
		
		
	}

}
