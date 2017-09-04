<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${empty sessionScope.login}">
	<div class="right-align" style="margin-top: 2%; margin-right: 2%; font-size: 10pt">
		<a href="LoginFormServlet" style="color: black">
		<i class="material-icons" style="font-size: 10pt">lock</i>로그인 
		</a> 
		<a href="MemberFormServlet" style="color: black; margin-left: 1%">
		<i class="material-icons" style="font-size: 10pt">person</i>회원가입
		</a>
	</div>
</c:if>
<c:if test="${!empty sessionScope.login}">
	<div class="right-align" style="margin-top: 2%; margin-right: 2%; font-size: 10pt">
		<a href="LogoutServlet" style="color: black">
		<i class="material-icons" style="font-size: 10pt">lock</i>로그아웃 
		</a> 
		<a href="MypageFormServlet" style="color: black; margin-left: 1%">
		<i class="material-icons" style="font-size: 10pt">border_vertical</i>마이페이지
		</a>
		<a href="" style="color: black; margin-left: 1%">
		<i class="material-icons" style="font-size: 10pt">border_vertical</i>장바구니
		</a>
	</div>
</c:if>