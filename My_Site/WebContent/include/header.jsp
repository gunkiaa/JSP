<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>My Site</title>
<style type="text/css">
.header_size {
	background: #003b94;
	width: 100%;
	min-height: 100px;
}

.header_size2 {
	max-width: 1200px;
	margin: 0 auto;
	position: relative;
}

.header_icon {
	max-width: 1200px;
	margin: 0 auto;
	position: relative;
	float: right;
	padding-top: 30px;
	padding-right: 10px;
}

#menu_size {
	height: 47px;
	width: 100%;
}

#menu_size ul {
	max-width: 1200px;
	margin: 0 auto;
	padding-right: 30px;
}

#menu_size ul li {
	list-style: none;
	color: #555555;
	float: left;
	line-height: 47px;
	vertical-align: middle;
	text-align: center;
}

#menu_size .menu_link {
	text-decoration: none;
	color: black;
	display: block;
	width: 236px;
	font-size: 17px;
}

#menu_size .menu_link:hover {
	color: #003b94;
	background-color: #cccccc;
}

.menu_size {
	background: white;
	width: 100%;
}

.menu_size2 {
	max-width: 1200px;
	margin: 0 auto;
}

@font-face {
	font-family: 'NanumGothicExtraBold';
	src: url(text/NanumGothicExtraBold.ttf) format('truetype');
}

@font-face {
	font-family: 'NanumGothic';
	src: url(text/NanumGothic.ttf) format('truetype');
}

body {
	font-family: NanumGothic;
}
</style>
</head>
<body style="margin: 0 auto">
<head>
<div class="header_size">
	<div class="header_size2">
		<a href="index.jsp"> <img src="img/logo.png" alt="로고">
		</a> <a href="https://www.facebook.com/profile.php?id=100006741431239"
			target="_blank"> <img class="header_icon"
			src="img/header_icon/Facebook-icon.png" width="40px" height="40px">
		</a> <a href="https://www.youtube.com/" target="_blank"> <img
			class="header_icon" src="img/header_icon/Youtube-icon.png"
			width="40px" height="40px">
		</a> <a href="https://blog.naver.com/wjdrlghd11" target="_blank"> <img
			class="header_icon" src="img/header_icon/Blog-icon.png" width="40px"
			height="40px">
		</a>
	</div>
</div>

<nav class="menu_size">
	<nav id="menu_size">
		<ul>
			<li><a class="menu_link" href="index.jsp"><strong>HOME</strong></a></li>
			<li>l</li>
			<li><a class="menu_link" href="introduce.jsp"><strong>INTRODUCE</strong></a></li>
			<li>l</li>
			<li><a class="menu_link" href="community.jsp"><strong>COMMUNITY</strong></a></li>
			<li>l</li>
			<li><a class="menu_link" href="portfolio.jsp"><strong>PORTFOLIO</strong></a></li>
			<li>l</li>
			<li><a class="menu_link" href="shop.jsp"><strong>SHOP</strong></a></li>
		</ul>
	</nav>
</nav>
</body>
</head>
</html>