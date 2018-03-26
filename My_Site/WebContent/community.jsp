<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DBconnect.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="include/header.jsp"%>


<style type="text/css">
.First_main {
	position: relative;
	width: 100%;
	height: 402px;
	background-color: #15120d;
}

.hr_size {
	position: relative;
	width: 100%;
	margin: 0 auto;
}

.main_size {
	max-width: 1200px;
	margin: 0 auto;
}

.COMMUNITY_img {
	margin: 0 auto;
	float: right;
}

.COMMUNITY_TEXT {
	margin: 0 auto;
	float: left;
	font-family: Algerian;
	text-align: center;
	line-height: 48px;
	margin-top: 150px;
}

.COMMUNITY_SPACE {
	position: relative;
	margin: 0 auto;
	width: 100%;
	height: 60px;
	background-color: #ececec;
}

table {
	border: 1px solid;
}

.table_rode {
	width: 100%;
	max-width: 1200px;
	margin: 0 auto;
	border-left-style: hidden;
	border-right-style: hidden;
	border-top: 2px solid #003b94;
	border-collapse: collapse;
}
}
</style>

<%
ArrayList<ArrayList<String>> list = (ArrayList<ArrayList<String>>) request.getAttribute("list");
%>
<!-- 메인 -->
<div class="First_main">
	<hr class="hr_size">
	<div class="main_size">
		<img class="COMMUNITY_img" src="img/community.png" alt="정우성 사진">

		<p class="COMMUNITY_TEXT">
			<span style="color: white; font-size: 50px;">COMMUNICATION
				SPACE</br> <span style="color: #003b94">COMMUNITY</span>
			</span><br>
		</p>

	</div>
</div>


<!-- 여기의 대한 설명 -->
<div class="COMMUNITY_SPACE">
	<hr class="hr_size">
	<p class="main_size">
		<strong
			style="color: #654b2c; text-align: left; font-size: 30px; line-height: 52px;">자유게시판</strong>
		<span style="font-size: 15px; float: right; line-height: 55px;"><img
			src="img/HOME.png" alt="home" style="height: 20px;"> > <span
			style="color: #555555;">COMMUNITY</span> > 자유게시판</span>
	</p>
</div>

<!-- 자유게시판 -->

<div style="margin-top: 40px;">
	<table class="table_rode">
		<tr height=50px style="border-bottom: 1px solid #cccccc;">

			<th width="10%" bgcolor="#eeeeee">번호</th>
			<th width="60%" bgcolor="#eeeeee">제목</th>
			<th width="15%" bgcolor="#eeeeee">작성자</th>
			<th width="15%" bgcolor="#eeeeee">작성일</th>
		</tr>

		<%
		
		for(int i = 0;i<list.size();i++){
			ArrayList<String> dto = (ArrayList<String>)list.get(i);
			String idx = dto.get(1);
			String title = dto.get(2);
			String writer = dto.get(3);
			String date = dto.get(4);
			%>
		<tr height=35px
			style="text-align: center; border-bottom: 1px solid #cccccc;">

			<td width="10%"><%=idx%></td>
			<td width="60%" style="text-align: left;"><%=title%></td>
			<td width="15%"><%=writer%></td>
			<td width="15%"><%=date%></td>
		</tr>
		<%
			}
		%>
	</table>
</div>
<%@ include file="include/footer.jsp"%>
