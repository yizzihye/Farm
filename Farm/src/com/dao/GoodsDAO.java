package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.GoodsDTO;

public class GoodsDAO {

	public List<GoodsDTO> goodsAllList(SqlSession session){
		List<GoodsDTO> list = session.selectList("goodsAllList");
		return list;
	}
	
	public List<GoodsDTO> goodsList(SqlSession session, String gCategory){
		List<GoodsDTO> list = session.selectList("goodsList",gCategory);
		return list;
	}
	
	public GoodsDTO goodsRetrieve(SqlSession session, String gCode) {
		GoodsDTO dto = session.selectOne("goodsRetrieve",gCode);
		return dto;
	}
}
