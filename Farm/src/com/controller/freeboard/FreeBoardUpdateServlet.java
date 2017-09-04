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


@WebServlet("/FreeBoardUpdateServlet")
public class FreeBoardUpdateServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String board_num= request.getParameter("board_num");
		String author= request.getParameter("author");
		String title= request.getParameter("title");
		String content= request.getParameter("content");
		
		FreeBoardDTO dto = new FreeBoardDTO();
		dto.setAuthor(author);
		dto.setContent(content);
		dto.setTitle(title);
		
		FreeBoardService  service = new FreeBoardService();
		String target = "FreeBoardListServlet";
		try {
			service.updateByNum(dto);
		} catch (MyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			target = "error.jsp";
		}
		response.sendRedirect(target);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
