<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인 홈페이지</title>
<script language="JavaScript" src="board.js"></script>
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
		<h1>글 쓰기</h1>
	</center>
	<table>
		<tr>
			<td>
				<form action="insert.do" name="wr_form">
					제목: <input style="margin-top: 20px; width: 90%;" type="text"
						name="title" maxlength="20"/><br /> 내용:
					<textarea style="margin-top: 20px; width: 90%; height: 300px;"
						name="content"></textarea>
					<br /> <input type="button" value="글 쓰기" onclick="infoWriter()" />
				</form>
			</td>
		</tr>
	</table>
</body>
</html>