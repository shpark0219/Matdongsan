package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	// SqlSessionFactory 사용하기 위해 메소드 호출하기!
	 SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	 SqlSession sqlSession = sqlSessionFactory.openSession();
	 
	 // 회원가입 기능 메소드 만들기
	 public int insertMember(Member member) {
		 int cnt = 0;
		 // Mapper.xml 작성될 SQL문의 ID 지정해주기
		 try {
			 cnt = sqlSession.insert("insertMember", member);
			 if(cnt > 0) {
				 System.out.println("회원가입성공");
				 sqlSession.commit();
			 }else {
				 System.out.println("회원가입 실패");
				 sqlSession.rollback();
			 } // cnt 판단 끝
		 }finally {
			 sqlSession.close();
		 }		 
		 return cnt;
	 } // 회원가입 기능 끝
	 
		// 로그인 기능 구현
		public Member selectMember(Member member) {
			Member loginMember = null;
			try {
				loginMember = sqlSession.selectOne("selectMember", member);
				if(loginMember != null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}			
			}finally {
				sqlSession.close();
			}//finally 끝
			return loginMember;
		}//로그인 끝
	 
		// 회원수정 기능 구현
		public int updateMember(Member member) {
			int cnt =0;
			try {
				cnt = sqlSession.update("updateMember", member);
				if(cnt>0) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}						
			}finally {
				sqlSession.close();
			}// finally 끝
			return cnt;
		}// 회원수정 끝	 
	 
	 
	 
	 
	 
}
