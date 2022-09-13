package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Test;
import com.smhrd.domain.TestDAO;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// 4. controller - 요청된 데이터 가져와서, VO 담고
		// post 방식 인코딩
		request.setCharacterEncoding("UTF-8");
		// 파라미터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// VO에 담기
		Test test = new Test(id, pw);
		// 일할 DAO 메소드 호출
		TestDAO dao = new TestDAO();
		Test m_test = dao.selectTest(test);
		
		if (m_test != null) {
			System.out.println("로그인 성공!!!!");
			// 반환된 VO 값을 세션에 저장
			// 다시 메인으로 가가...My page로 가기 등등...
		}else {
			System.out.println("로그인 실패!!");
		}
		
		
		
		
		
		
	} // service 메소드 끝!!!!!!!!!!!!

}
