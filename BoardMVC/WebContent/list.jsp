<%@page import="java.sql.Timestamp"%>
<%@page import="dto.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
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
	border-collapse: collapse;
	text-align: center;
	background-color: #d2f8ff;
}

th, td {
	border: 1px solid #444444;
}

th {
	background-color: skyblue;
}

td>a:link {
	color: black;
	text-decoration: none;
}

td>a:visited {
	color: #7e99da;
	text-decoration: none;
}

td>a:hover {
	color: #c9d2af;
	text-decoration: none;
}

.btn {
	width: 70px;
	height: 20px;
}

span>a:link {
	color: black;
	text-decoration: none;
}

span>a:visited {
	color: black;
	text-decoration: none;
}

span>a:hover {
	color: black;
	text-decoration: none;
}
</style>
</head>
<body>
	<span style="border-bottom: 1px solid; float: right"><a href="join.jsp">회원가입</a></span>
	<span
		style="border-bottom: 1px solid; float: right; border-bottom: 1px solid; margin-right: 10px;"><a
		href="#">로그인</a></span>
	<center>
		<h1>게시판</h1>
	</center>
	<span style="float: right"><a href="writer.do"><button
				class="btn">글쓰기</button></a></span>
	<table>
		<tr style="height: 60px;">
			<th style="width: 70px;">번호</th>
			<th style="width: 900px;">제목</th>
			<th style="width: 150px;">작성자</th>
			<th style="width: 180px;">작성일</th>
			<th style="width: 70px;">조회수</th>
			<th style="width: 30px;">삭제</th>
			
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr style="height: 40px;"
				onMouseover="this.style.background='#effaff';"
				onMouseout="this.style.background='#d2f8ff';">
				<td>${dto.bId}</td>
				<td><a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a></td>
				<td>${dto.bName}</td>
				<td>${dto.bDate}</td>
				<td>${dto.bHit}</td>
				<td><a href="delete.do?bId=${dto.bId}"><button style="width: 100%; height: 100%;">삭제</button></a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>