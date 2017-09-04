package com.controller.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.exception.MyException;
import com.service.MemberService;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String userid=request.getParameter("userid");
	String passwd=request.getParameter("passwd");
	HashMap<String,String> map=new HashMap<>();
	map.put("userid", userid);
	map.put("passwd", passwd);
	
	String target="home.jsp";
	MemberService service=new MemberService();
	try {
		MemberDTO dto = service.memberLogin(map);
		
		HttpSession session=request.getSession();
		session.setAttribute("login", dto);
		
	} catch (MyException e) {
		target="error.jsp";
		e.printStackTrace();
	}
	
	RequestDispatcher dis=request.getRequestDispatcher(target);
	dis.forward(request, response);
	}
		  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
