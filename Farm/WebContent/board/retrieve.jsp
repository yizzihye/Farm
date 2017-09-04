<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="FreeBoardWriteServlet">
<table width='95%' height='100%' border='0' cellpadding='0' cellspacing='0' >
	<tr>
		<td height='100%' valign='top'> 
			<table width='100%' height='500' border='0' cellpadding='0' cellspacing='0' bgcolor='#FFFFFF'>
				<tr> 
					<td align='center' valign='top'>
						<table width='100%' border='0' cellpadding='5' cellspacing='0' class='b'>
							<tr align='center'> 
								<td height='3' colspan='4' align='center' bgcolor='#cecfce'> </td>
							</tr>
							<tr > 
								<td  width='50' height='25' align='center' bgcolor='#F0F0F0'><b>제목</b> </td>
								<td height='25' colspan='3'>
									<table width='100%' border='0' cellspacing='0' cellpadding='0' class='b'>
										<tr>
											<td height='25'> ${retrieve.title }</td>
																			</tr>
									</table>
								</td>
							</tr>
							<tr align='center' bgcolor='#cecfce'> 
								<td height='1' colspan='4' align='center'></td>
							</tr>
							<tr > 
								<td width='50' height='29' align='center' bgcolor='#F0F0F0' ><b>작성자</b></td>
								<td width='150' >${retrieve.author }</td>
								<td width='50' align='center' bgcolor='#F0F0F0' ><b>등록일</b></td>
								<td width='255' >2006-01-25 PM 10:24:22</td>
							</tr>
							<tr align='center' bgcolor='#cecfce'> 
								<td height='1' colspan='4' align='center'></td>
							</tr>
							<tr align='center' valign='top'> 
								<td colspan='4' align='center'> 
								<div align='justify' class='text3'>
					       ${retrieve.content }
								</div>
								</td>
							</tr>
							<tr align='center' bgcolor='#cecfce'> 
								<td height='3' colspan='4' align='center'></td>
							</tr>
<!-- 							<tr> 
								<td class="b" colspan="4" align="right" height="25"><img src="./images/board-line07.gif" width="550" height="20"></td>
							</tr> -->
							<tr align='right'> 
								<td height='25' colspan='4' align=center>

<!-- 									<table  width='300' border='0' cellspacing='0' cellpadding='0'>
										<tr> 
											<td><a href=bulletin_reply.php?page=1&uid=147&keyfield=&key=&kind=1><img src='./images/b-re.gif' width='59' height='17' border='0'></a></td>
											<td width='3'>&nbsp;</td>
											<td><a href=bulletin_update.php?page=1&uid=147&keyfield=&key=&kind=1><img src='./images/b-modify.gif' width='59' height='17' border='0'></a></td>
											<td width='3'>&nbsp;</td>
											<td><a href='mailto:'><img src='./images/b-mail.gif' width='73' height='34' border='0'></a></td>
											<td width='3'>&nbsp;</td>										
											<td><a href='bulletin_delete.php?keyfield=&key=&kind=1&uid=147'><img src='./images/b-del.gif' width='59' height='17' border='0'></a></td>	
											
											<td width='3'>&nbsp;</td>
											<td><a href="bulletin_list.php?page=1&uid=147&keyfield=&key=&kind=1"><img src='./images/b-list.gif' width='59' height='17' border=0'></a></td>
										</tr>
									<form name=form1 method='post' action='bulletin_delete.php?keyfield=&key=&kind=1&uid=147'>
										<input type=hidden name='uid'>
										<input type=hidden name=''>
									</form>
									</table> -->
								</td>
							</tr>
							<tr align='center'> 
								<td colspan='4' align='center'>&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr> 
					<td>&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>





</body>
</html>