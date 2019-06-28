<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>신고내역상세보기</title>
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
 
#main {
	width: 1520px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid #F5BCA9;
	width: 1518px;
	height: 170px;
	position: fixed;
	background-color: white;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#middle {
	width: 1520px;
	height: auto;
	margin-top: 60px;
}

ul {
	list-style: none;
}

#adminmenu {
	float: left;
	width: 300px;
	height: 500px;
}

#adminopt {
	float: left;
	align-content: center;
	width: 1216px;
	height: 1000px;
}

.opt {
	width: 1200px;
	height: 990px;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
}

#declarelist {
	margin-left: 150px;
	margin-right: 150px;
	margin-top: 20px;
	width: 900px;
	height: 650px;
	float: left;
}

#paper {
	color: black;
	background-color:#FAFAFA;
	box-shadow: 1px -1px 6px 0px rgba(0,0,0,0.31);
}

#btngrp {
	margin-left: 310px;
	margin-right: 190px;
	margin-top: 20px;
	width: 700px;
	height: 70px;
	float: left;	
}


.btn2{
	margin-top: 10px;
	margin-left: 40px;
	/*General*/
	float: left;
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
	width: 150px;
	height: 40px;
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


#footer {
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}

</style>
</head>

<body>
	<div id="main">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	
	<div id="middle">
	<div id="adminmenu">
		<jsp:include page="admininclud.jsp"></jsp:include>
	</div>

	<div id="adminopt">
		<form name="formName" method="post">
			<div class="opt">
				<h3	style="text-align: center; font-size: 30px;">회원정보 상세보기</h3>
				<div id="btngrp">
				<div class="btnArray">
					<input type="button" value="적합" onclick="b();" class="btn2" />
				</div>

				<div class="btnArray">
					<input type="button" value="부적합" onclick="a();" class="btn2" />
				</div>
				<div class="btnArray">
					<a href="declareWrite" class="btn2" id="atag">돌아가기</a>
				</div>
				</div>
				<div id="declarelist">
					<table id="paper">
						<tr>
							<th width="200" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">회원등급</th>
							<th colspan="5" width="800" height="40" style="font-size: 15px;  padding-left: 10px;">${mbInfo.mb_grade}</th>
						</tr>
						<tr>
							<th width="200" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">아이디</th>
							<th width="100" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">이름</th>
							<th width="200" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">생년월일</th>
							<th width="200" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">이메일</th>
							<th width="200" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">보유 포인트</th>
							<th width="300" height="40" style="font-size: 20px; text-align: center; background-color:#c8e7ea;">경고횟수</th>
						</tr>

						<tr>
							<td width="200" height="30" style="font-size: 15px; text-align: center;">${mbInfo.mb_id}</td>
							<td width="100" height="30" style="font-size: 15px; text-align: center;">${mbInfo.mb_name}</td>
							<td width="200" height="30" style="font-size: 15px; text-align: center;">${mbInfo.mb_birth}</td>
							<td width="200" height="30" style="font-size: 15px; text-align: center;">${mbInfo.mb_email}</td>
							<td width="200" height="30" style="font-size: 15px; text-align: center;">${mbInfo.mb_point}</td>
							<td width="300" height="30" style="font-size: 15px; text-align: center;">${mbInfo.mb_ccnt}</td>
						</tr>
					</table>
				</div>

			</div>
		</form>
	</div>
	<div id="footer">
		<hr style="width: 100%; border: 2px solid coral; align: center;">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	</div>

</body>
<script>
	function a() {
		var f = document.formName;
		f.action = "declarenonpermit?rp_num=${rp_num}&mb_id=${rp_mbid_a}";
		// 파일 전송이 필요할 경우만 씀.
		f.submit();
	}
	function b() {
		var f = document.formName;
		f.action = "declarepermit?rp_num=${rp_num}&mb_id=${rp_mbid_a}";
		f.submit();
	}
	function goBack() {
		window.history.forward();
	}
</script>
</html>