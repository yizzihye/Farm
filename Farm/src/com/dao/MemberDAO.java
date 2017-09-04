package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;

public class MemberDAO {
	
	public int memberJoin(SqlSession session, MemberDTO dto) {
		int n= session.insert("memberJoin", dto);
		return n;
	}

	public MemberDTO memberLogin(SqlSession session, HashMap<String, String> map) {
		MemberDTO dto=session.selectOne("memberLogin",map);
		return dto;
	}

	public MemberDTO mypage(SqlSession session, String userid) {
		MemberDTO dto=session.selectOne("mypage",userid);
		return dto;
	}

	public int memberUpdate(SqlSession session, MemberDTO dto) {
		int n= session.update("memberUpdate", dto);
		return n;
	}

	public int memberDelete(SqlSession session, String userid) {
		int n= session.delete("memberDelete", userid);
		return n;
	}

	public MemberDTO idCheck(SqlSession session, String userid) {
		MemberDTO dto=session.selectOne("idCheck",userid);
		return dto;
	}

}
