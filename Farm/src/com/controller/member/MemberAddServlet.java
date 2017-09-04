package com.controller.member;

import java.io.IOException;

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

@WebServlet("/MemberAddServlet")
public class MemberAddServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String username = request.getParameter("username");
		String post1 = request.getParameter("post1");
		String post2 = request.getParameter("post2");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String point = request.getParameter("point");
		String buycnt = request.getParameter("buycnt");

		MemberDTO dto = new MemberDTO();
		dto.setAddr1(addr1);
		dto.setAddr2(addr2);
		dto.setEmail1(email1);
		dto.setEmail2(email2);
		dto.setPasswd(passwd);
		dto.setPhone1(phone1);
		dto.setPhone2(phone2);
		dto.setPhone3(phone3);
		dto.setPost1(post1);
		dto.setPost2(post2);
		dto.setUserid(userid);
		dto.setUsername(username);
		dto.setBuycnt(Integer.parseInt(buycnt));
		dto.setPoint(Integer.parseInt(point));

		String target = "home.jsp";
		MemberService service = new MemberService();
		try {
			service.memberJoin(dto);
			request.setAttribute("join", "회원가입 완료");

		} catch (MyException e) {
			target = "error.jsp";
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
