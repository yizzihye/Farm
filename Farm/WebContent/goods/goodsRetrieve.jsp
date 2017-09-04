<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%-- <c:if test="${!empty cart}">
	<script>alert('${cart}')</script>
</c:if> --%>

<form name="goodRetrieveForm" method="GET" >
	<input type="hidden" name="gImage1" value="${goodsRetrieve.gImage1}">
	<input type="hidden" name="gImage2" value="${goodsRetrieve.gImage2}">
	<input type="hidden" name="gCode" value="${goodsRetrieve.gCode}">
	<input type="hidden" name="gName" value="${goodsRetrieve.gName}">
	<input type="hidden" name="gPrice" value="${goodsRetrieve.gPrice}">

	<table width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td>
				<table align="center" width="710" cellspacing="0" cellpadding="0"
					border="0" style='margin-left: 30px'>
					<tr>
						<td class="td_default"><font size="5"><b>- 상품 정보 -</b></font>&nbsp;</td>
					</tr>
					<tr>
						<td rowspan="7">
						 <img src="images/items/${goodsRetrieve.gImage1}.jpg" border="0" align="center" width="300" /></td>
						<td class="td_title">제품코드</td>
						<td class="td_default" colspan="2">${goodsRetrieve.gCode}</td>
					</tr>
					<tr>
						<td class="td_title">상품명</td>
						<td class="td_default" colspan="2">${goodsRetrieve.gName}</td>
					</tr>
					<tr>
						<td class="td_title">가격</td>
						<td class="td_red" colspan="2">${goodsRetrieve.gPrice}</td>
					</tr>
					<tr>
						<td class="td_title">배송비</td>
						<td colspan="2"><font color="#2e56a9" size="2"><b> 무료배송</b> </font> <font size="2">(도서 산간지역 별도 배송비 추가)</font></td>
					</tr>
					<tr>
						<td class="td_title">상품옵션</td>
						<td class="row" colspan="2">
						  <select class="browser-default col s3" size="1" name="GOODS_SIZE" id="GOODS_SIZE">
								<option value="중량 선택" disabled selected>중량 선택</option>
								<option value="1kg">1kg</option>
								<option value="5kg">5kg</option>
								<option value="10kg">10kg</option>
						  </select>
						</td>
					</tr>
					<tr>
						<td class="td_title">주문수량</td>
						<td class="row">
						  <input class="input-field col s3" type="text"
							     name="GOODS_AMOUNT" value="1" id="GOODS_AMOUNT"
							     style="text-align: right; height: 18px">&nbsp;&nbsp; 
						  <img src="images/up.PNG" id="up" onclick="upCount()"> 
						  <img src="images/down.PNG" id="down" onclick="downCount()">
						</td>
					</tr> 
					<tr>
					 <td colspan="3">
					  <button onclick="reqCheck('order')">구매</button>&nbsp;&nbsp;
					  <button onclick="cartAdd(goodRetrieveForm)">장바구니</button>
					 </td>
					</tr>
				</table>

			</td>
		</tr>
	</table>
</form>

<hr style="border: solid 1px lightgrey;">
 <div align="center" style="margin-top: 50px">
  <img src="images/items/${goodsRetrieve.gImage2}.jpg" border="0" align="center" /></td>
 </div>
 
<script>
 function cartAdd(f){
	 f.action="CartAddServlet";
 }
 function upCount(){
	 var amount = parseInt(document.getElementById("GOODS_AMOUNT").value);
	 amount+=1;
	 document.getElementById("GOODS_AMOUNT").value=amount;
 }

 function downCount(){
	 var amount = parseInt(document.getElementById("GOODS_AMOUNT").value);
	 amount-=1;
	 if(amount==0){
		 amount=1;
	 }
	 document.getElementById("GOODS_AMOUNT").value=amount;
 }
</script>