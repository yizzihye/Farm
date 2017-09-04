package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.FreeBoardDTO;

public class FreeBoardDAO {
	
	public List<FreeBoardDTO> selectAll(SqlSession session){
		 List<FreeBoardDTO> list = session.selectList("selectAll");
		 return list;
	}
	
	public int boardWrite(SqlSession session, FreeBoardDTO dto) {
		int n = session.insert("boardWrite", dto);
		return n;
	}
	public FreeBoardDTO selectByTitle(SqlSession session, String title) {
		FreeBoardDTO dto = session.selectOne("selectByNum", title);
		return dto;
	}
	public int readCnt(SqlSession session, int num) {
		int n = session.update("readCnt", num);
		return n;				
	}
	public int updateByNum(SqlSession session, FreeBoardDTO dto) {
		int n = session.update("updateByNum", dto);
		return n;
	}
	public int deleteByNum(SqlSession session, int num) {
		int n = session.delete("readCnt", num);
		return n;				
	}
	
	
	
	

}
