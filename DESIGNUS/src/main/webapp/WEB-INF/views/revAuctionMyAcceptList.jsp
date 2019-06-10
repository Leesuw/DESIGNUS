<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	margin: auto;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
	border: 1px solid black;
}

#one {
	width: 100%;
	height: 100%;
}

#notice {
	padding-top: 5px;
	margin: 10px;
	border: 1px solid orange;
	width: 1080px;
	height: 100px;
	text-align: center;
	font-size: 20px;
	float: left;
}

#info {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 580px;
	font-size: 20px;
	text-align: left;
	float: left;
}

#renking {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 200px;
	text-align: center;
	font-size: 20px;
	float: left;
}

#auction {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 300px;
	text-align: center;
	font-size: 20px;
	float: left;
}

#spon {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 300px;
	float: left;
	font-size: 20px;
	text-align: center;
}

#main {
	width: 1520px;
	height: 170px;
	text-align: center;
	height: 170px;
}

.bt {
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(212, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 90px;
	height: 35px;
	border-color: rgb(223, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
}

.bt01 {
	border: 1px solid black;
	float: right;
	margin-right: 30px;
	width: 100px;
	height: 80px;
}

.bt02 {
	border: 1px solid black;
	float: right;
	margin-right: 30px;
	margin-top: 50px;
	width: 100px;
	height: 80px;
}

.bt03 {
	float: right;
	border: none;
	margin-right: 30px;
	margin-top: 50px;
	width: 100px;
	height: 80px;
}

.bt:hover {
	color: white;
}

.bt:active {
	color: yellow;
}

a {
	color: red
}

#lightbox {
	position: absolute;
	top: 0;
	left: 30%;
	width: 1000px;
	height: 800px;
	margin-left: -200px;
	background: #fff;
	z-index: 1001;
	display: none;
	border: 1px solid orange;
}

#lightbox {
	border: 1px solid orange;
	position: absolute;
	top: 200px;
	left: 600px;
	width: 800px;
	height: 700px;
	margin: auto;
	background: #fff;
	z-index: 1001;
	display: none;
	background-color: orange;
	text-align: center;
}

#lightbox-shadow {
	position: absolute;
	top: 0;
	left: 0;
	width: 8000px;
	height: 8000px;
	background: #000;
	opacity: 1;
	z-index: 1000;
	display: none;
}

#lightbox1 {
	border: 1px solid orange;
	position: absolute;
	top: 200px;
	left: 600px;
	width: 800px;
	height: 700px;
	margin: auto;
	background: #fff;
	z-index: 1001;
	display: none;
	background-color: orange;
	text-align: center;
}

#lightbox-shadow1 {
	position: absolute;
	top: 0;
	left: 0;
	width: 8000px;
	height: 8000px;
	background: #000;
	opacity: 1;
	z-index: 1000;
	display: none;
}

#leftmain {
	width: 310px;
	height: 950x;
	border: 1px solid black;
	float: left;
}

#rightmain {
	width: 1210px;
	height: 950px;
	border: 1px solid black;
	float: left;
}

#img {
	margin-top: 20px;
	border: 1px solid orange;
	margin: 20px 10px 10px 10px;
	width: 280px;
	height: 290px;
	text-align: left;
	font-size: 20px;
	float: left;
}

#point {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 20px;
	float: left;
}

#img {
	margin-top: 20px;
	border: 1px solid orange;
	margin: 20px 10px 10px 10px;
	width: 280px;
	height: 290px;
	text-align: left;
	font-size: 20px;
	float: left;
}

a:active {
	text-decoration: none;
	color: #646464;
}

a:visited {
	text-decoration: none;
	color: #646464;
}

a:link {
	text-decoration: none;
	color: #646464;
}

a:hover {
	text-decoration: none;
	color: #646464;
}

#header {
	padding: 3px;
	width: 1510px;
	height: 100px;
	float: left;
}

#logo {
	padding: 5px;
	width: 270px;
	height: 80px;
	float: left;
}

#search {
	margin-left: 100px;
	padding-left: 120px;
	padding-right: 120px;
	padding-top: 20px;
	width: 570px;
	height: 80px;
	float: left;
}

#loginwriter {
	padding: 3px;
	padding-top: 20px;
	width: 300px;
	height: 80px;
	float: right;
}

#category {
	float: left;
	width: 1500px;
	height: 50px;
}

#searchtxt {
	margin: 50px, 20px;
	width: 300px;
	height: 30px;
	align: center;
}

#subcategory {
	width: 50px;
	height: 50px;
	background-color: orange;
	color: white;
	font-size: 30px;
	float: left;
}

#menu {
	float: left;
	width: 1400px;
	height: 50px
}

#submenu {
	margin-left: 100px;
	width: 150px;
	float: left;
	height: 50px;
	text-align: center;
	font-size: 18px;
}

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	float: left;
}

#mainheader {
	border: 1px solid black;
	width: 1520px;
	height: 170px;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>

	<div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<div id="leftmain">
			<div id="img">
				<h1>프로필사진</h1>
			</div>

			<div id="point">
				<h1>포인트:</h1>
			</div>

			<div id="info">
				<table width="1000">

					<tr>
						<td style="font-size: 27px"><a href="historylist?list=rev">제작의뢰
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=revre">제작의뢰
								접수내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=auc">출품작
								구매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=aucre">출품작
								판매 내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=spon">후원진행
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=sponre">후원요청
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="historylist?list=basket">꿍
								내역</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="privacyedit">개인정보 수정</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="memberout">회원탈퇴 신청</a></td>
					</tr>
					<tr>
						<td style="font-size: 27px"><a href="nortowri">작가전환 신청</a></td>
					</tr>
				</table>
			</div>
		</div>

		<div id="rightmain">
			<div id="notice">
				<h2>제작의뢰 접수내역</h2>
			</div>
			<div id="renking">
				<h1>의뢰내역</h1>
				<div class="bt01">
					<h2>요청</h2>
					<h2>취소</h2>
				</div>
			</div>
			<div id="auction">
				<h1>의뢰내역</h1>
				<div class="bt02">
					<h2>요청</h2>
					<h2>취소</h2>
				</div>
			</div>
			<div id="spon">
				<h1>의뢰내역</h1>
				<div class="bt03">
					<button id="action" style="width: 110px;" class="bt">의뢰인배송정보</button>
					<button id="delivery" class="bt">배송 보내기</button>
				</div>
			</div>
		</div>
		<div id="lightbox-shadow">
			<div id="lightbox">
				<h1>의뢰인 배송정보</h1>
				<hr>
				<button>확인</button>
				<button type="button"
					onclick="location.href='revAuctionMyAcceptList.jsp">취소</button>
			</div>
		</div>
		<div id="lightbox-shadow1">
			<div id="lightbox1">
				<h1>운송장 입력</h1>
				<hr>
				<button>확인</button>
				<button type="button"
					onclick="location.href='revAuctionMyAcceptList.jsp'">취소</button>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript">
	$("#action").click(function() {
		$('#lightbox-shadow').css("display", "inline")
		$('#lightbox').css("display", "inline")
	});
	$("#delivery").click(function() {
		$('#lightbox-shadow1').css("display", "inline")
		$('#lightbox1').css("display", "inline")
	});
</script>

</html>
