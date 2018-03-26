<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="include/header.jsp"%>

<style type="text/css">
.First_main {
	position: relative;
	width: 100%;
	height: 402px;
	background-color: #0f181a;
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

.INTRODUCE_img {
	margin: 0 auto;
	float: right;
}

.INTRODUCE_TEXT {
	margin: 0 auto;
	float: left;
	font-family: Algerian;
	text-align: center;
	line-height: 48px;
	margin-top: 150px;
}

.INTRODUCE_SPACE {
	position: relative;
	margin: 0 auto;
	width: 100%;
	height: 60px;
	background-color: #ececec;
}
</style>

<!--메인 사진 -->

<div class="First_main">
	<hr class="hr_size">
	<div class="main_size">
		<img class="INTRODUCE_img" src="img/introduce1.png" alt="장혁 사진">

		<p class="INTRODUCE_TEXT">
			<span style="color: white; font-size: 50px;">LET ME BEING MY</br> <span
				style="color: #003b94">INTRODUCTION</span>
			</span><br>
		</p>

	</div>
</div>


<!-- 여기의 대한 설명 -->
<div class="INTRODUCE_SPACE">
	<hr class="hr_size">
	<p class="main_size">
		<strong
			style="color: #654b2c; text-align: left; font-size: 30px; line-height: 52px;">자기소개</strong>
		<span style="font-size: 15px; float: right; line-height: 55px;"><img
			src="img/HOME.png" alt="home" style="height: 20px;"> > <span
			style="color: #555555;">INTRODUCE</span> > 자기소개</span>
	</p>
</div>


<%@ include file="include/footer.jsp"%>