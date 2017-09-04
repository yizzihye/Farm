package com.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.MemberDAO;
import com.dto.MemberDTO;
import com.exception.MyException;
import com.service.MemberService;


@WebServlet("/MemberDeleteServlet")
public class MemberDeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		MemberDTO dto=(MemberDTO)session.getAttribute("login");
		String target="home.jsp";
		if(dto==null) {
			request.setAttribute("delete", "로그인이 필요한 작업입니다");
			target="loginForm.jsp";
		}else {
			MemberService service=new MemberService();
			try {
				service.memberDelete(dto.getUserid());
				request.setAttribute("delete", "회원탈퇴 완료");
				session.invalidate();
			} catch (MyException e) {
				target="error.jsp";
				e.printStackTrace();
			}
		}
	
		RequestDispatcher dis=request.getRequestDispatcher(target);
		dis.forward(request, response);
		
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
