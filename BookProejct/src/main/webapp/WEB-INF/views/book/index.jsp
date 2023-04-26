<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<Style>
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
</Style>
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
				<li><a href="#">HOME</a></li>
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
		<section>
			<br /> <br />
			<h4 style="text-align: center">추천도서</h4>
			<div class="slideshow-container" style="margin-top: 60px">

				<div class="mySlides fade">
					<div class="numbertext">1 / 10</div>
					<img class="slideImg" src="resources/img/1.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">2 / 10</div>
					<img class="slideImg" src="resources/img/2.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">3 / 10</div>
					<img class="slideImg" src="resources/img/3.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">4 / 10</div>
					<img class="slideImg" src="resources/img/4.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">5 / 10</div>
					<img class="slideImg" src="resources/img/5.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">6 / 10</div>
					<img class="slideImg" src="resources/img/6.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">7 / 10</div>
					<img class="slideImg" src="resources/img/7.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">8 / 10</div>
					<img class="slideImg" src="resources/img/8.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">9 / 10</div>
					<img class="slideImg" src="resources/img/9.jpg" style="width: 100%">
				</div>

				<div class="mySlides fade">
					<div class="numbertext">10 / 10</div>
					<img class="slideImg" src="resources/img/10.jpg"
						style="width: 100%">
				</div>

				<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
					class="next" onclick="plusSlides(1)">&#10095;</a>

			</div>
			<br>

			<div style="text-align: center">
				<span class="dot" onclick="currentSlide(1)"></span> <span
					class="dot" onclick="currentSlide(2)"></span> <span class="dot"
					onclick="currentSlide(3)"></span> <span class="dot"
					onclick="currentSlide(4)"></span> <span class="dot"
					onclick="currentSlide(5)"></span> <span class="dot"
					onclick="currentSlide(6)"></span> <span class="dot"
					onclick="currentSlide(7)"></span> <span class="dot"
					onclick="currentSlide(8)"></span> <span class="dot"
					onclick="currentSlide(9)"></span> <span class="dot"
					onclick="currentSlide(10)"></span>
			</div>
			<div style="text-align: right; margin-top: 40px;">
				<button style="float: right">
					<a class="link" style="margin-left: 0; font-weight: normal;"
						href="/create">생성</a>
				</button>
				<form style="float: right; margin-right: 10px">
					<input type="text" placeholder="검색" name="keyword"
						value="${keyword }"> <input type="submit" value="검색" />
				</form>
			</div>
			<br> <br> <br>
			<table style="margin-top: 40px; margin-left: 20px">
				<tr>
					<th class="th">제목</th>
					<th class="th" style="width: 200px">카테고리</th>
					<th class="th" style="width: 200px">가격</th>
				</tr>
				<c:forEach var="book" items="${book }">
					<tr>
						<td><a href="/detail?bookId=${book.book_id}">${book.title }</a></td>
						<td>${book.category }</td>
						<td><fmt:formatNumber type="number" maxFractionDigits="3"
								value="${book.price }" /></td>
					</tr>
				</c:forEach>
			</table>
		</section>
		<footer>
			<p style="text-align: center; margin-top: 40px; margin-bottom: 80px;">Copyright
				ⓒ JSS Inc. All Rights Reserved</p>
		</footer>
	</div>
</body>
<script>
	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}

	function currentSlide(n) {
		showSlides(slideIndex = n);
	}

	function showSlides(n) {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		if (n > slides.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = slides.length
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace("active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";
	}
</script>
</html>