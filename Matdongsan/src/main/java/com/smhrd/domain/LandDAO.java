package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class LandDAO {
	
	// SqlSessionFactory 사용하기 위해 메소드 호출하기!
	 SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	 SqlSession sqlSession = sqlSessionFactory.openSession();
	 
		//회원 전체 검색기능 구현, Member에 e,p,t,a
		public List<LandDTO> selectAllLand(String str){
			List<LandDTO> Landlist = null;
			try {
				Landlist = sqlSession.selectList("selectAllLand", str);
				
				for(LandDTO L:Landlist) {
					System.out.println(L.getApt_name());
					System.out.println(L.getApt_addr());
					System.out.println(L.getApt_addr2());
					System.out.println(L.getApt_price());
					System.out.println(L.getApt_info());
				}
				
				
				if(Landlist != null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}finally {
				sqlSession.close();
			}		
			return Landlist;
			
		}// 회원 전체 검색 끝
		
		// 로그인 기능 구현
		public LandDTO selectLand(LandDTO dto) {
			LandDTO Landinfo = null;
			try {
				Landinfo = sqlSession.selectOne("SelectLand", dto);
				if(Landinfo != null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}			
			}finally {
				sqlSession.close();
			}//finally 끝
			return Landinfo;
		}//로그인 끝		
		

}
