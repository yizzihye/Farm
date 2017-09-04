package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dao.FreeBoardDAO;
import com.dto.FreeBoardDTO;
import com.exception.MyException;
import com.mybatis.MybatisTemplate;

public class FreeBoardService {
	
	public List<FreeBoardDTO> selectAll() throws MyException{
		SqlSession session = MybatisTemplate.openSession();
		FreeBoardDAO dao = new FreeBoardDAO();
		List<FreeBoardDTO> list = null;
		try {
			list = dao.selectAll(session);			
		} catch (Exception e) {
			e.printStackTrace();
			throw new MyException("selectAll 예외발생");
		} finally {
			session.close();
		}
		return list;
		
	}
	
	public void boardWrite(FreeBoardDTO dto) throws MyException {
		SqlSession session = MybatisTemplate.openSession();
		FreeBoardDAO dao = new FreeBoardDAO();
		try {
			int n =dao.boardWrite(session, dto);
			if(n==1) session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new MyException(" boardWrite 예외발생");
		} finally {
			session.close();
		}
	}

	public FreeBoardDTO selectByTitle(String title) throws MyException {
		SqlSession session = MybatisTemplate.openSession();
		FreeBoardDAO dao = new FreeBoardDAO();
		FreeBoardDTO dto = null;
		int num=0;
		try {
			int n = dao.readCnt(session, num);
			if (n == 1)
				session.commit();
			dto = dao.selectByTitle(session, title);
		} catch (Exception e) {
			e.printStackTrace();
			throw new MyException("selectByTitle 예외발생");
		} finally {
			session.close();
		}
		return dto;
	}
	
	public void updateByNum(FreeBoardDTO dto) throws MyException {
		SqlSession session = MybatisTemplate.openSession();
		FreeBoardDAO dao = new FreeBoardDAO();
		try {
			int n =dao.updateByNum(session, dto);
			if(n==1) session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new MyException(" updateByNum 예외발생");
		} finally {
			session.close();
		}
	}
	
	public void deleteByNum(int num) throws MyException {
		SqlSession session = MybatisTemplate.openSession();
		FreeBoardDAO dao = new FreeBoardDAO();
		try {
			int n =dao.deleteByNum(session, num);
			if(n==1) session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new MyException(" deleteByNum 예외발생");
		} finally {
			session.close();
		}
	}
	
	
	

}
