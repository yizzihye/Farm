<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>RyanFarm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="css/materialize.min.css">
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<script src="js/materialize.min.js"></script>

</head>
<body>
	<c:if test="${!empty delete}">
	<script>
	alert('${delete}');
	</script>
	</c:if>
	<c:if test="${!empty logout}">
	<script>
	alert('${logout}');
	</script>
	</c:if>
	<c:if test="${!empty join}">
	<script>
	alert('${join}');
	</script>
	</c:if>
	<c:if test="${!empty sessionScope.login}">
	<script>
	alert("로그인 되었습니다");
	</script>
	</c:if>
	
	<div class="white">
		<jsp:include page="include/top.jsp" flush="true" />
		<div class="center-align">
			<a href="home.jsp" class="blue-text text-darken-2 center-align" style="font-size: 30pt">RyanFarm</a>
		</div>
		<div class="black-text center-align">농산물직거래</div>
	</div>
	<hr style="border: solid 1px lightgrey;">
	<jsp:include page="include/submenu.jsp" flush="true" />
  
</body>
</html>