<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<form action="FreeBoardListServlet">
<table border=0 cellspacing=1 cellpadding=2 width='100%'  class='b'>
	</tr>
	
		<td align=left><p>게시물 수 : <font color=red>${ list.size()}</font></td>
<!-- 	<td align=right><p><font color=red>1</font> / 4</td> -->
	 </tr>
</table>


<table width='100%' height='100%' border='0' cellpadding='0' cellspacing='0' bgcolor='#FFFFFF'  class='font'>
<tr>
<td height='1' colspan='5' align='center' bgcolor='#cecfce' >
<form action="MyBoardSearchServlet">
  <select name="searchName">
  <option value="title" >제목</option>
  <option value="author">작성자</option>
  </select>
  <input type="text" name="searchValue">
  <input type="submit" value="검색">
  </form>
</td>
</tr>
	<tr>
		<td align='center' valign='top'>
			<table width='100%'  border='0' cellpadding='5' cellspacing='0'  class='b'>
				<tr bgcolor='#cecfce'> 
					<td height='3' colspan='5' align='center'></td>
				</tr>
				<tr> 
					<td width='50' height='30' align='center' bgcolor='#F0F0F0'><strong>글번호</strong></td>
					<td width='280' height='30' align='center' bgcolor='#F0F0F0'><strong>제 목</strong></td>
					<td width='60' height='30' align='center' bgcolor='#F0F0F0'><strong>작성자</strong></td>
					<td width='65' height='30' align='center' bgcolor='#F0F0F0'><strong>등록일</strong></td>
					<td width='50' height='30' align='center' bgcolor='#F0F0F0'><strong>조회수</strong></td>
				</tr>
				
<c:if test="${list.size()==0 }">
<tr>
<td>레코드가 없습니다.</td>
</tr>
</c:if>
<c:if test="${list.size()!=0 }">
<c:forEach items="${list }" var="xx">

				<tr > 
					<td height='1' colspan='5' align='center' bgcolor='#cecfce' ></td >
				</tr >
	<tr bgcolor='#ffffff'>			<td width='50' height='25' align='center'><p>${xx.num }</td>
	<td width='280' height='25'><p><a href="MyBoardRetrieveServlet?num=${xx.num }">${xx.title }</a>	 </td>		
					<td width='60' height='25' align='center'><p><a href='#' title=>${xx.author }</a></td>     
					<td width='65' height='25' align='center'><p>${xx.writeday }</td>
					<td width='50' height='25' align='center'><p>${xx.readCnt }</td>
		     </tr>
			
</c:forEach>
</c:if>

                                <tr > 
					<td height='1' colspan='5' align='center' bgcolor='#cecfce' ></td >
				</tr >
			</table>
		</td>
	</tr>
</table>

</form>
<a href="FreeBoardWriteUIServlet">글쓰기</a>