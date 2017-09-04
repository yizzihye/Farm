package com.controller.freeboard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.FreeBoardDTO;
import com.exception.MyException;
import com.service.FreeBoardService;


@WebServlet("/FreeBoardListServlet")
public class FreeBoardListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid= request.getParameter("userid");
		HttpSession session = request.getSession();
		FreeBoardDTO dto = new FreeBoardDTO();
		session.setAttribute("userid", userid);
		
		FreeBoardService  service = new FreeBoardService();
		String target = "boardForm.jsp";
		try {
			service.selectAll();
		} catch (MyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			target = "error.jsp";
		}
		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
