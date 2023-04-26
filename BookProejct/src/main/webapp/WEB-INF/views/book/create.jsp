<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.category {
	background-color: #94a9ff;
	border: none;
	color: white;
}

.th {
	width: 500px;
	border: 1px solid black;
}

.link {
	margin-left: 20px;
	color: rgb(79, 79, 79);
	text-decoration: none;
	font-weight: bold;
}

* {
	box-sizing: border-box
}

.mySlides {
	display: none
}

.slideImg {
	vertical-align: middle;
	width: 300px;
	height: 400px;
}

/* Slideshow container */
.slideshow-container {
	max-width: 300px;
	position: relative;
	margin: auto;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	padding: 16px;
	margin-top: -22px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active, .dot:hover {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
.menu {
	width: 800px;
	overflow: hidden;
	margin: 150px auto;
}

.menu>li {
	width: 20%; /*20*5=100%*/
	float: left;
	text-align: center;
	line-height: 40px;
	background-color: #5778ff;
}

.menu a {
	color: #fff;
}

.submenu>li {
	width: 160px;
	line-height: 50px;
	background-color: #94a9ff;
	line-height: 50px;
}

.submenu {
	height: 0; /*ul의 높이를 안보이게 처리*/
	overflow: hidden;
	position: absolute;
}

* {
	padding: 0;
	margin: 0
}

li {
	list-style: none
}

a {
	text-decoration: none;
	font-size: 14px
}

.menu>li:hover {
	background-color: #94a9ff;
	transition-duration: 0.5s;
}

.menu>li:hover .submenu {
	height: 250px; /*서브메뉴 li한개의 높이 50*5*/
	transition-duration: 1s;
	/* On smaller screens, decrease text size */ @media only screen and
	(max-width: 300px) { .prev , .next , .text {
	font-size: 11px
}
}
</style>
</head>
<body>
	<div style="width: 1000px; margin: 0 auto; height: 100%;">
		<header>
			<a href="/"><img style="float: left" src="resources/img/logo.png" /></a>
			<div style="line-height: 200px; font-size: 9px;">
				<a href="/" class="link" style="margin-left: 280px">HOME</a> <a
					href="/" class="link">로그인</a> <a href="/" class="link">회원가입</a> <a
					href="/" class="link">고객센터</a> <a href="/" class="link">제휴문의</a> <a
					href="/" class="link">회사소개</a>
			</div>
		</header>
		<nav>
			<ul class="menu">
				<li><a href="/">HOME</a></li>
				<li><a href="#">국내만화</a>
					<ul class="submenu">
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="순정만화"> <input
									class="category" type="submit" value="순정만화">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="소년만화"> <input
									class="category" type="submit" value="소년만화">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="성인만화"> <input
									class="category" type="submit" value="성인만화">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="기획도서"> <input
									class="category" type="submit" value="기획도서">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="만화잡지"> <input
									class="category" type="submit" value="만화잡지">
							</form>
						</li>
					</ul></li>
				<li><a href="#">일본만화</a>
					<ul class="submenu">
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="순정만화"> <input
									class="category" type="submit" value="순정만화">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="소년만화"> <input
									class="category" type="submit" value="소년만화">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="성인만화"> <input
									class="category" type="submit" value="성인만화">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="기획도서"> <input
									class="category" type="submit" value="기획도서">
							</form>
						</li>
					</ul></li>
				<li><a href="#">미국만화</a>
					<ul class="submenu">
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="DC 코믹스마블"> <input
									class="category" type="submit" value="DC 코믹스마블">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="코믹스리터러리"> <input
									class="category" type="submit" value="코믹스리터러리">
							</form>
						</li>
						<li>
							<form action="/" method="GET">
								<input type="hidden" name="genre" value="그래픽 노블"> <input
									class="category" type="submit" value="그래픽 노블">
							</form>
						</li>
					</ul></li>
			</ul>

		</nav>
		<h1>책 등록하기</h1>

		<form method="POST">
			<p>
				제목 : <input type="text" name="title" />
			</p>
			<p>
				카테고리 : <input type="text" name="category" />
			</p>
			<p>
				국가 : <select name="nation">
					<option value="대한민국" selected>대한민국</option>
					<option value="일본">일본</option>
					<option value="미국">미국</option>
				</select>
			</p>
			<p>
				장르 : <select name="genre">
					<option value="순정만화" selected>순정만화</option>
					<option value="소년만화">소년만화</option>
					<option value="성인만화">성인만화</option>
					<option value="기획도서">기획도서</option>
					<option value="만화잡지">만화잡지</option>
					<option value="DC 코믹스마블">DC 코믹스마블</option>
					<option value="코믹스리터러리">코믹스리터러리</option>
					<option value="그래픽노블">그래픽노블</option>
				</select>
			</p>
			<p>
				가격 : <input type="number" name="price" />
			</p>
			<p>
				<input type="submit" value="저장" />
			</p>
		</form>
	</div>
</body>
</html>