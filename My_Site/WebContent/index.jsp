<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	정기홍 바보
<style type="text/css">
.First_main {
	position: relative;
	width: 100%;
	height: 602px;
	background-color: #e3ebf4;
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

.WELLCOME_img {
	margin: 0 auto;
	float: right;
}

.WELLCOME_TEXT {
	margin: 0 auto;
	float: left;
	font-family: Algerian;
	text-align: center;
	line-height: 48px;
	margin-top: 220px;
}

.main_box {
	margin: 0 auto;
	color: #333333;
	font-size: 20px;
	background-color: #e0e0e0;
	height: 38px;
	padding-top: 17px;
	padding-left: 20px;
	max-width: 384px;
	border-top: 1px solid #aaaaaa;
	border-bottom: 1px solid #aaaaaa;
}

.sub_box {
	margin: 0 auto;
	color: #333333;
	font-size: 15px;
	height: 35px;
	padding-top: 17px;
	padding-left: 20px;
}

.sub_hr {
	margin: 0 auto;
	max-width: 280px;
	border: 1px dashed #aaaaaa;
}

.img_explain {
	position: absolute;
	top: 169px;
	left: 0px;
	font-size: 16px;
	color: white;
	width: 275px;
	height: 35px;
	background: black;
	opacity: 0.6;
	line-height: 32px;
	padding-left: 10px;
}

.intro_BG {
	position: relative;
	margin: 0 auto;
	width: 285px;
	height: 204px;
	background-image: url(img/intro.gif);
	margin-top: 20px;
}

.intro_BG2 {
	position: relative;
	margin: 0 auto;
	width: 285px;
	height: 204px;
	background-image: url(img/maple.png);
	margin-top: 20px;
}

#intro_BG_repeat {
	background-repeat: no-repeat;
}

.explain_text {
	position: relative;
	margin: 0 auto;
	padding: 10 20 0 20;
	text-size: 15px;
}

@font-face {
	font-family: 'Algerian';
	src: url(text/Algerian.ttf) format('truetype');
}
</style>


<main> <%@ include file="include/header.jsp"%>
<!--  Section 1 -->
<div class="First_main">
	<hr class="hr_size">
	<div class="main_size">
		<img class="WELLCOME_img" src="img/WELLCOME.png" alt="공유 사진">

		<p class="WELLCOME_TEXT">
			<span style="color: #003b94; font-size: 80px;">WELLCOME!</span><br>
			<span style="font-size: 30px;">JUNG GI HONG</span><br> <span
				style="font-size: 20px; color: #555555; font-family: NanumGothic; line-height: 25px;">A
				good plan, violently executed now, is<br> better than a perfect
				plan next week.
			</span>
		</p>

	</div>
</div>


<!-- Section 2 -->

<div
	style="position: relative; width: 1200px; margin: 0 auto; margin-top: 40px;">

	<!-- COMMUNITY -->

	<div
		style="float: left; border-left: 1px solid #aaaaaa; border-right: 1px solid #aaaaaa;">

		<dt class="main_box">
			<strong style="float: left;">COMMUNITY</strong><span
				style="padding-top: 2px; font-size: 15px; float: right; padding-right: 20px;"><a
				style="text-decoration: none; color: #333333;" href="community.jsp">more
					></a></span>
		</dt>

		<ul class="sub_box">
			<li style="list-style-type: none;"><img src="img/dot.gif"
				style="margin-bottom: 2px;"><span style="padding-left: 5px;">게시판
					글이 올라가는 듯한 기...</span><span
				style="float: right; padding-right: 20px; font-size: 13px;">2017-12-27</span></li>
		</ul>

		<hr class="sub_hr">

		<ul class="sub_box">
			<li style="list-style-type: none;"><img src="img/dot.gif"
				style="margin-bottom: 2px;"><span style="padding-left: 5px;">게시판
					글이 올라가는 듯한 기...</span><span
				style="float: right; padding-right: 20px; font-size: 13px;">2017-12-27</span></li>
		</ul>

		<hr class="sub_hr">

		<ul class="sub_box">
			<li style="list-style-type: none;"><img src="img/dot.gif"
				style="margin-bottom: 2px;"><span style="padding-left: 5px;">게시판
					글이 올라가는 듯한 기...</span><span
				style="float: right; padding-right: 20px; font-size: 13px;">2017-12-27</span></li>
		</ul>

		<hr class="sub_hr">

		<ul class="sub_box">
			<li style="list-style-type: none;"><img src="img/dot.gif"
				style="margin-bottom: 2px;"><span style="padding-left: 5px;">게시판
					글이 올라가는 듯한 기...</span><span
				style="float: right; padding-right: 20px; font-size: 13px;">2017-12-27</span></li>
		</ul>

		<hr class="sub_hr">

		<ul class="sub_box">
			<li style="list-style-type: none;"><img src="img/dot.gif"
				style="margin-bottom: 2px;"><span style="padding-left: 5px;">게시판
					글이 올라가는 듯한 기...</span><span
				style="float: right; padding-right: 20px; font-size: 13px;">2017-12-27</span></li>
		</ul>

		<!-- INTRODUCE -->

		<dt class="main_box">
			<strong style="float: left;">INTRODUCE</strong><span
				style="padding-top: 2px; font-size: 15px; float: right; padding-right: 20px;"><a
				style="text-decoration: none; color: #333333;" href="introduce.jsp">more
					></a></span>
		<dd class="intro_BG" id="intro_BG_repeat">
			<div class="img_explain">Let me begin my Introduction.</div>
		</dd>
		<dd class="explain_text" style="text-align: left">
			안녕하세요 정기홍입니다.<br>저를 알고싶으신 분은</br>여기로 오세요.
		</dd>

		<hr>
		</dt>



	</div>
	<div
		style="position: relative; margin: 0 auto; margin-top: 600px; margin-top: 40px;">

		<!-- COMMUNITY -->

		<div
			style="float: center; border-left: 1px solid #aaaaaa; margin-left: 408px; border-right: 1px solid #aaaaaa; margin-right: 407px;">

			<!-- PORTFOLIO -->

			<dt class="main_box">
				<strong style="float: left;">PORTFOLIOE</strong><span
					style="padding-top: 2px; font-size: 15px; float: right; padding-right: 20px;"><a
					style="text-decoration: none; color: #333333;" href="introduce.jsp">more
						></a></span>
			<dd class="intro_BG2" id="intro_BG_repeat">
				<div class="img_explain">메이플스토리</div>
			</dd>
			<dd class="explain_text" style="text-align: left">
				안녕하세요 정기홍입니다.<br>저를 알고싶으신 분은</br>여기로 오세요.
			</dd>

			<hr>
			</dt>



		</div>


	</div>

	<div style="clear: both"></div>
</div>



</main>







<%@ include file="include/footer.jsp"%>

