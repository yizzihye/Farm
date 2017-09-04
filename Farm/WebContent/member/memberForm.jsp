<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
	
	//아이디 중복확인
	$("#userid").on("blur",function(event){
		console.log("xx");
		if($.trim($('#userid')).val==null && $('#userid').length <6 ) {
			$("#result").text("* 아이디는 공백제외 6자리이상").css("color","red").css("font-size","9px");
		}else{
		$.ajax({
			type:"GET",
			url:"IdCheckServlet",
			data:{
				userid:$('#userid').val()
				},	
			dataType:"text",
			success:function(responseData, status, xhr){
				console.log(responseData);
				$("#result").text(responseData).css("color","red").css("font-size","9px");
			},
			error: function(xhr, status, e){console.log(status, e);}
		
			});
		}
		});
	
	
	
	//비번 일치하는지 
	$(".err").hide();
	$("#passwd2").on("blur",function(event){
				
		var pw=$("#passwd").val();
		var pw2=$("#passwd2").val();	
		if(pw!=pw2){
			$("#errMsg").show();
			$("#errMsg").text("비밀번호가 일치하지 않음");
			event.preventDefault();
		}else{
			$("#errMsg").hide();	
		};	
		
		
	// 전화번호 숫자만 포함하는지 확인
	$("#phone2").on("blur",function(event){
	var regExp = /^[0-9]+$/;		
	if (!regExp.test( $('#phone2').val())) {
    alert("잘못된 휴대폰 번호입니다.  - 를 제외한 숫자만 입력하세요.");

	};
    
		});
	
	
	}); 
	
	});


</script>



<!-- DAUM 주소 라이브러리 시작 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="js/daum.js"></script>
<!-- DAUM 주소 라이브러리 끝 -->    
<form action="MemberAddServlet" id="myform" >
아이디<input type="text" name="userid" id="userid" required="required">
<span id="result"></span><br>


비밀번호<input type="password" name="passwd" id="passwd" required="required">
<span id="result2" style="color:red;font-size:10px">* 10자리 이하</span><br>
비밀번호<input type="password" name="passwd2" id="passwd2" required="required">
<span class="err" id="errMsg" style="color:red;font-size:10px"></span><br>

이름<input type="text" name="username" id="username" required="required"><br>
<!-- 다음주소 시작-->
	<input name="post1" id="post1" size="5" readonly=""> -
	<input name="post2" id="post2" size="5" readonly="">
	<input onclick="openDaumPostcode()" type="button" value="우편번호찾기">
	<br>
	<input name="addr1" id="addr1" size="40" readonly=""
		placeholder="도로명주소">
	<br>
	<span style="line-height: 10%;"><br></span>
	<input name="addr2" id="addr2" size="40" placeholder="지번주소">
<!-- 다음주소 끝 -->
      <br>
휴대폰<select name="phone" id="phone1">
       <option value="010" selected="selected">010</option>
       <option value="011">011</option>
       <option value="017">017</option>
     </select>-
     <input type="text" class="phone" id="phone2">-
     <input type="text" class="phone" id="phone3"><br>
이메일<input type="text" name="email1" id="email1">@
<input type="text" name="email2" id="email2"><br>


<input type="hidden" id="point" name="point" value="0">
<input type="hidden" id="buycnt" name="buycnt" value="0">


 <input class="submit" type="submit" value="회원가입" id="checkVal">
      <input type="reset" value="취소">
</form>
