<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디, 비밀번호 찾기 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
div {
	margin: auto;
}

.button {
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
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(255, 225, 133)
		0%, rgb(255, 239, 191) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(255, 225,
		133)), color-stop(1, rgb(255, 239, 191)));
	background-image: -webkit-linear-gradient(90deg, rgb(255, 225, 133) 0%,
		rgb(255, 239, 191) 100%);
	background-image: -o-linear-gradient(90deg, rgb(255, 225, 133) 0%,
		rgb(255, 239, 191) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(255, 225, 133) 0%,
		rgb(255, 239, 191) 100%);
	background-image: linear-gradient(90deg, rgb(255, 225, 133) 0%,
		rgb(255, 239, 191) 100%);
	width: 120px;
	height: 30px;
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
}

button:hover {
	color: white;
}

#text1 {
	width: 330px;
	height: 100px;
	text-align: center;
	display: block;
}

#pwtext1 {
	width: 330px;
	height: 100px;
	text-align: center;
	display: block;
}

#pwlist {
	text-align: center;
	width: 400px;
	height: 130px;
	display: none;
}

#list {
	text-align: center;
	width: 400px;
	height: 130px;
}

#logoimg {
	width: 250px;
	height: 80px;
}

.size {
	background-color: #FFCA6C;
	color: white;
}

#idf {
	width: 250;
	height: 40;
}

#pwf {
	width: 250;
	height: 40;
}

#articleView_layer #bg_layer {
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 100;
	display: none;
}

#contents_layer {
	width: 400px;
	height: 400px;
	margin: -150px 0 0 -194px;
	padding: 28px 28px 0 28px;
	border: 2px solid #555;
	background: #fff;
	font-size: 12px;
	z-index: 200;
	color: #767676;
	line-height: normal;
	white-space: normal;
	overflow: scroll;
	display: none;
}

#articleView_layer {
	position: fixed;
	width: 100%;
	height: 100%
}

#articleView_layer.open {
	display: block;
	color: red;
}

#idfindd {
	display: none;
	font-size: 25px;
	margin: auto;
}

#findcheckmain {
	width: 600px;
	height: 500px;
	border: 1px solid black;
}

#logoimgdiv {
	width: 230px;
	height: 100px;
	padding: 10px 180px;
}

#full {
	width: 500px;
	height: 300px;
	text-align: center;
}

#revauctionbtn, #auctionbtn {
	margin-top: 10px;
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

#bestlist, #pwbestlist {
	width: 400px;
	height: 50px;
	float: left;
	text-align: center;
}

#buttondiv {
	width: 430px;
	height: auto;
	text-align: center;
	display: block;
}

#text2 {
	width: 400px;
	height: 50px;
	display: block;
	text-align: center;
}

#pwtext2 {
	width: 400px;
	height: 50px;
	display: block;
	text-align: center;
}

#revauctionbtn:hover {
	color: white;
}

#auctionbtn:hover {
	color: white;
}

#btz2:hover {
	color: white;
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
</style>
</head>
<body>



	<div id="findcheckmain">
		<div id="logoimgdiv">
			<a href="home"><img id="logoimg" src="img/logo"></a>
		</div>
		<form action="memberidfind" id="memberidfind" method="post">

			<div id="idfind">
				<div id="buttondiv">
					<input class="size" id="revauctionbtn" type="button" value="아이디 찾기">
					<input class="size" id="auctionbtn" type="button" value="비밀번호 찾기">
				</div>
				<br> <br>
				<div id="list">
					<div id="text1" align="center">
						<table>
							<tr>
								<th>이름</th>
								<td><input type="text" id="mb_name" name="mb_name"
									></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" id="mb_email" name="mb_email"
									></td>
									
							</tr>
						</table>

					</div>
					<div id="text2" align="center">
						<button id="idf" class="button">아이디 찾기</button>
						<!-- onclick="AjId()" -->
					</div>
					<div id="idfindd">
						회원님의 아이디는
						<!--이엘문 찍기-->
					</div>
					<div id="bestlist">
						<a id="idhome" href="home">홈으로가기</a>
					</div>
					<p>${findid}</p>
				</div>
			</div>
		</form>
	<form action="memberpwfind" id="memberidfind" method="post">
		<div id="pwfindcheckmain">
			<div id="pwlist">
				<div id="pwtext1" align="center">
					<table>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="mb_id" id="mb_pwid"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" name="mb_name" id="mb_pwname"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="text" name="mb_email" id="mb_pwemail"></td>
							
					<%-- 	<c:set var="zz" value="${findpw}"/>
						<c:if test="${findpw != null}">
								<input type="button" value="${findpw}"/>
								</c:if> --%>
						</tr>
					</table>
				</div>
				<div id="pwtext2" align="center">
					<button id="pwf" class="button" onclick="Aj('mb_pw')">비밀번호 찾기</button>
				</div>
				<div id="pwbestlist">
					<a id="pwhome" href="home">홈으로가기</a>
				</div>
				<p>${findpw}</p>
				<button id="pwbtn">${findpw1}</button>
			</div>
		</div>
	</form>
	</div>
	<div id="lightbox-shadow">
	<div id="lightbox">
     <h1>후원인들 배송정보 리스트</h1>
            <button class="button">확인</button>
            <button type="button"  class="button" onclick="location.href='fundingOrderList.html' ">돌아가기</button>
    </div>
    </div>       
	<!--아이디 명시-->


	<!--새로운 비밀번호 입력 표시 라이트 박스 창-->
	<div id="articleView_layer">
		<div id="bg_layer"></div>
		<div id="contents_layer"></div>
	</div>
</body>
<script>
$("#pwbtn").click(function() {
    $('#lightbox-shadow').css("display","inline")
    $('#lightbox').css("display","inline")
 }); 
	 function AjId() {
	var mb_email = $("#mb_email").val();
	var mb_name = $("#mb_name").val();
	console.log(mb_email);
	console.log(mb_name);
		$.ajax({
			url : 'memberidfind',
			type : 'POST',
			datatype : 'json',
			data : {
				email : mb_email,
				name : mb_name
			},
			success : function(data) {
				$('#idf').click(function() {
					$("#text1").css("display", "block");
					$("#idf").css("display", "none");
					$('#idfindd').css("display", "block");
				});
			},
			error : function(error) {
				alert("에러가 발생했습니다. 관리자에게 문의하시기 바랍니다");
			}//AjIdEnd
		});//ajax end 
	} 
 
	//ajax 실행문 작성

	function Aj(id) {
		$('#articleView_layer').addClass('open');
	}

	$("#revauctionbtn").click(function() {
		$("#list").css("display", "block");
		$("#pwlist").css("display", "none");
	});
	$("#auctionbtn").click(function() {
		$("#list").css("display", "none");
		$("#pwlist").css("display", "block");
	});//end Hbutton

	var $layerWindow = $('#articleView_layer');
	$layerWindow.find('#bg_layer').on('mousedown', function(event) {
		$layerWindow.removeClass('open');
	});//function End
</script>
</html>