<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인 홈페이지</title>
<style>
table {
	width: 100%;
	border: 1px solid #444444;
	text-align: center;
	border-collapse: collapse;
	background-color: #d2f8ff;
}

th, td {
	border: 1px solid #444444;
}

th {
	background-color: #7474ff;
}

.btn {
	width: 70px;
	height: 20px;
}
</style>
</head>
<body>
	<center>
		<h1>글 보기</h1>
	</center>
	<table>
		<c:forEach items="${content_view}" var="dto">
			<tr style="height: 40px;">
				<th colspan="3">${dto.bTitle}</th>
			</tr>
			<tr>
				<td style="width: 150px; height: 300px" colspan="3">${dto.bContent}</td>
			</tr>
			<tr>
				<td style="width: 100px;">작성자: ${dto.bName}</td>
				<td style="width: 180px;">작성일: ${dto.bDate}</td>
				<td style="width: 70px;">조회수: ${dto.bHit}</td>
			</tr>
		</c:forEach>
	</table>
	<span style="float: right"><a href="delete.do?bId="><button class="btn">삭제</button></a></span>
	<span style="float: right"><button class="btn">수정</button></span>
</body>
</html>