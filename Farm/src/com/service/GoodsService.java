package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dao.GoodsDAO;
import com.dto.GoodsDTO;
import com.exception.MyException;
import com.mybatis.MybatisTemplate;

public class GoodsService {

	public List<GoodsDTO> goodsAllList() throws MyException{
		SqlSession session = MybatisTemplate.openSession();
		GoodsDAO dao = new GoodsDAO();
		List<GoodsDTO> list = null;
		try {
			list = dao.goodsAllList(session);
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("goodsAllList 실패");
		}finally {
			session.close();
		}
		return list;
	}
	
	public List<GoodsDTO> goodsList(String gCategory) throws MyException{
		SqlSession session = MybatisTemplate.openSession();
		GoodsDAO dao = new GoodsDAO();
		List<GoodsDTO> list = null;
		try {
			list = dao.goodsList(session, gCategory);
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("goodsList 실패");
		}finally {
			session.close();
		}
		return list;
	}
	
	public GoodsDTO goodsRetrieve(String gCode) throws MyException{
		SqlSession session = MybatisTemplate.openSession();
		GoodsDAO dao = new GoodsDAO();
		GoodsDTO dto = null;
		try {
			dto = dao.goodsRetrieve(session, gCode);
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("goodsRetrieve 실패");
		}finally {
			session.close();
		}
		return dto;
	}
	
	
}
