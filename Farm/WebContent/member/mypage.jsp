<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<!-- DAUM 주소 라이브러리 시작 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="js/daum.js"></script>
<!-- DAUM 주소 라이브러리 끝 -->    

<form action="MemberUpdateServlet">
아이디<input type="text" name="userid" id="userid" 
    value="${login.userid}" readonly>
비밀번호<input type="text" name="passwd" id="passwd" 
value="${login.passwd}"><br>
이름<input type="text" name="username" id="username" 
value="${login.username}" readonly><br>
<!-- 다음주소 시작-->
	<input name="post1" id="post1" size="5" 
	value="${login.post1}" readonly=""> -
	<input name="post2" id="post2" size="5" 
	value="${login.post2}" readonly="">
	<input onclick="openDaumPostcode()" type="button" value="우편번호찾기">
	<br>
	<input name="addr1" id="addr1" size="40" readonly=""
		placeholder="도로명주소" 
		value="${login.addr1}">
	<br>
	<span style="line-height: 10%;"><br></span>
	<input name="addr2" id="addr2" size="40" 
	value="${login.addr2}" placeholder="지번주소">
<!-- 다음주소 끝 -->
      <br>
휴대폰<select name="phone1" id="phone1">
      <c:choose>
       <c:when test="${login.phone1 == '010'}">
         <option value="010" selected>010</option>
         <option value="011">011</option>
         <option value="017">>017</option>
       </c:when>
       <c:when test="${login.phone1 == '011'}">
         <option value="010" >010</option>
         <option value="011" selected>011</option>
         <option value="017">017</option>
       </c:when>
      <c:when test="${login.phone1 == '017'}">
         <option value="010" >010</option>
         <option value="011" >011</option>
         <option value="017" selected>017</option>
      </c:when>
    </c:choose>
     </select>-
     <input type="text" name="phone2" id="phone2" 
     value="${login.phone2}" >-
     <input type="text" name="phone3" id="phone3" 
     value="${login.phone3}" ><br>
이메일<input type="text" name="email1" id="email1" 
value="${login.email1}">@
<input type="text" name="email2" id="email2" 
value="${login.email2}"><br>

가입일:<input type="text" name="joinday" id="joinday" 
value="${login.joinday}" readonly="readonly"><br>

구매횟수:<input type="text" name="buycnt" id="buycnt" 
value="${login.buycnt}" readonly="readonly"><br>

적립포인트: <input type="text" name="point" id="point" 
value="${login.point}" readonly="readonly"><br>

<input type="submit" value="정보수정">
</form>


