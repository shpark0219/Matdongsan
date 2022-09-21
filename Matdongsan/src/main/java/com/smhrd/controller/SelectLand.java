package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.LandDAO;
import com.smhrd.domain.LandDTO;


public class SelectLand extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 0. 한글 인코딩
		request.setCharacterEncoding("UTF-8");		
		
		String str_aptno = request.getParameter("aptNo");
		int aptno = Integer.parseInt(str_aptno);
		
		LandDTO dto = new LandDTO(aptno);
		
		LandDAO dao = new LandDAO();
		LandDTO SelectLand = dao.selectLand(dto);
		
		// 6. 명령 후 처리
		if(SelectLand != null) {
			System.out.println("로그인 성공!");
			// 세션에 로그인 정보 저장
			// 1. 세션 객체 생성
			HttpSession session = request.getSession();
			session.setAttribute("selectLand", SelectLand);		
		
		}else {
			System.out.println("로그인 실패!");		
		}
		// 페이지 이동 - 성공, 실패 둘 다 메인.jsp로 감
		response.sendRedirect("kakaomap.jsp");		
		
		
	}

}
