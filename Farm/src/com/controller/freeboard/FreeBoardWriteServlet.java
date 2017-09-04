package com.controller.freeboard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.FreeBoardDTO;
import com.exception.MyException;
import com.service.FreeBoardService;


@WebServlet("/FreeBoardWriteServlet")
public class FreeBoardWriteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String author = request.getParameter("author");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String userid = request.getParameter("userid");
		
		FreeBoardDTO dto = new FreeBoardDTO();
		dto.setAuthor(author);
		dto.setTitle(title);
		dto.setContent(content);

			
		
		FreeBoardService  service = new FreeBoardService();
		String target = "FreeBoardListServlet";
		try {
			service.boardWrite(dto);			
			request.setAttribute("dto", dto);
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
