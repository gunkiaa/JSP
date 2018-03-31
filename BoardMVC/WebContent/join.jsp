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
	<center>
		<h1>회원가입</h1>
	</center>
	<form method="post" action="join.do">
		<table>
			<tr>
				<td>아이디 : <input name="ID" maxlength="10"
					style="margin-top: 10px; margin-left: 14px; margin-bottom: 10px;"
					type="text" /><br /> 비밀번호 : <input name="PW" type="password" maxlength="10" /><br />
					이름 : <input name="NAME" maxlength="5" type="text"
					style="margin-top: 10px; margin-left: 30px; margin-bottom: 10px;" /><br />
					이메일 : <input name="EMAIL" type="text"
					style="margin-left: 16px; margin-bottom: 10px;" /><br /> 성별 : &nbsp
					&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 남성<input type="radio"
					name="GENDER" value="남성"> 여성<input type="radio" name="GENDER"
					style="margin-bottom: 10px;" value="여성"><br />
				</td>
			<tr>
		</table>
		<div align="right"><input type="submit" style="width:100px;" value="로그인"></div>
	</form>
</body>
</html>