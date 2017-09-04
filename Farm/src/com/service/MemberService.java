package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dao.MemberDAO;
import com.dto.MemberDTO;
import com.exception.MyException;
import com.mybatis.MybatisTemplate;

public class MemberService {

	public void memberJoin(MemberDTO dto) throws MyException{
		MemberDAO dao=new MemberDAO();
		SqlSession session=MybatisTemplate.openSession();
		try {
			int n=dao.memberJoin(session, dto);
			if(n==1) session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("memberJoin success");
		}finally {
			session.close();
		}
		
	}

	public MemberDTO memberLogin(HashMap<String, String> map) throws MyException{
		MemberDAO dao=new MemberDAO();
		MemberDTO dto=new MemberDTO();
		SqlSession session=MybatisTemplate.openSession();
		try {
			dto = dao.memberLogin(session, map);
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("memberLogin success");
		}finally {
			session.close();
		}
		return dto;
	}

	public MemberDTO mypage(String userid) throws MyException{
		SqlSession session=MybatisTemplate.openSession();
		MemberDAO dao=new MemberDAO();
		MemberDTO dto=new MemberDTO();
		try {
			dto=dao.mypage(session, userid);
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("mypage success");
		}finally {
			session.close();
		}
		return dto;
	}

	public void memberUpdate(MemberDTO dto) throws MyException{
		MemberDAO dao=new MemberDAO();
		SqlSession session=MybatisTemplate.openSession();
		try {
			int n=dao.memberUpdate(session, dto);
			if(n==1) session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("memberUpdate success");
		}finally {
			session.close();
		}
		
	}

	public void memberDelete(String userid) throws MyException{
		MemberDAO dao=new MemberDAO();
		SqlSession session=MybatisTemplate.openSession();
		try {
			int n=dao.memberDelete(session, userid);
			if(n==1) session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("memberDelete success");
		}finally {
			session.close();
		}
		
	}

	public MemberDTO idCheck(String userid)throws MyException{
		MemberDAO dao=new MemberDAO();
		MemberDTO dto=new MemberDTO();
		SqlSession session=MybatisTemplate.openSession();
		try {
			dto = dao.idCheck(session, userid);
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("idCheck success");
		}finally {
			session.close();
		}
		return dto;
	}
}
