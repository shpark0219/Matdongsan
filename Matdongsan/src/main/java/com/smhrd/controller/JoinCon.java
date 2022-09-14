package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;


public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[JoinCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		// 1. 파라미터 수집		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		
		// 2. 수집된 데이터를 Member객체에 담기		
		Member member = new Member(id, pw, email);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(member);
		
		// 6. 명령 후 처리
		if(cnt>0) {
			System.out.println("회원가입 성공!!");
			response.sendRedirect("Question4_Login.jsp");
			
//			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
//			request.setAttribute("joinInfo", dto);
//			rd.forward(request, response);
			
		}else {
			System.out.println("회원가입 실패!!");
			response.sendRedirect("Question4_Login.jsp");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
