<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#one {
	width: 100%;
	height: 100%;
}

div {
	margin: auto;
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
	width: 85px;
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

#notice {
	padding-top: 5px;
	margin: 10px;
	width: 1080px;
	height: 50px;
	color: #95deea;
	text-align: left;
	font-size: 20px;
	float: left;
	overflow: auto;
}

#renking {
	margin: 0px 10px 10px 10px;
	width: 1080px;
	height: 875px;
	text-align: center;
	font-size: 20px;
	float: left;
}

#main {
	width: 1520px;
	height: 170px;
	text-align: center;
}

.bt01 {
	border: none;
	float: right;
	margin-right: 30px;
	width: 100px;
	height: 80px;
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

#lightbox2 {
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

#lightbox-shadow2 {
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

#lightbox-shadow3 {
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

#point {
	margin: 0px 10px 10px 10px;
	width: 280px;
	height: 60px;
	text-align: left;
	font-size: 20px;
	float: left;
}

#img {
	margin-top: 20px;
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

#loginwriter {
	padding: 3px;
	padding-top: 20px;
	width: 300px;
	height: 80px;
	float: right;
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

#mypageimg {
	float: left;
	width: 50px;
	height: 50px;
	margin-left: 5px;
}

.imgg {
	width: 240px;
	height: 170px;
}

#loginmsg {
	float: left;
	width: 130px;
	height: 50px;
	margin-left: 10px;
}

#mainheader {
	width: 1520px;
	height: 170px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#setp {
	border: 1px solid orange;
	margin: 0px 10px 10px 10px;
	width: 1200px;
	height: 840px;
	float: left;
	font-size: 20px;
	text-align: center;
	overflow: auto;
}

#setpT {
	width: 1200px;
	margin: 0px 10px 10px 10px;
	height: 900px;
	float: left;
	border: none;
}

#l1 {
	border: 3px solid gray;
	position: absolute;
	width: 500px;
	height: 430px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 30px;
	text-align: center;
	background-color: white;
	display: none;
	font-size: 20px;
	top: 500px;
	left: 600px;
}

#l3 {
	border: 3px solid gray;;
	position: absolute;
	width: 600px;
	height: 530px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 30px;
	text-align: center;
	background-color: white;
	display: none;
	font-size: 20px;
	top: 500px;
	left: 600px;
}

#w3 {
	border: 3px solid gray;
	position: absolute;
	width: 430px;
	height: 400px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 30px;
	text-align: center;
	background-color: white;
	display: none;
	font-size: 20px;
	top: 500px;
	left: 600px;
}

#Q1 {
	width: 500px;
	height: 330px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
}

#total {
	position: absolute;
	width: 100%;
	height: 200%;
	background-color: black;
	z-index: 1001;
	opacity: 0.75;
	display: none;
}

#btn22{
width:200px;
height:40px;}

.t1 {
	top: 100;
	left: -200;
}

#mypagemain {
	width: 1530px;
	height: 1200px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#2list {
	width: 1000px;
	height: 250px;
	float: left;
}

#sangimg {
	margin: 10px;
	height: 150px;
	width: 150px;
	float: left;
}

#sixth {
	position: absolute;
	width: 300px;
	top: 1100px;
	left: 1000px;
}

.first {
	width: 1060px;
	height: 250px;
	text-align: center;
	font-size: 20px;
	float: left;
	border-radius: 5px;
}

.first:hover {
	transform: scale(1.05);
	background-color: white;
	border: 2px solid #95deea;
	transition-duration: 1s;
	height: 250px;
}

.p1 {
	padding-left: 20px;
	margin-top: 5px;
	width: 500px;
	font-weight: bord;
	float: left;
	text-align: left;
}

.p2 {
	margin-top: 5px;
	width: 500px;
	text-align: left;
	float: left;
}

.second {
	background-color: #c3ecf3;
	border-radius: 5px;
	margin: 10px 10px 10px 10px;
	width: 1040px;
	height: 40px;
	text-align: center;
	font-size: 20px;
	float: left;
}

.third {
	margin: 5px 10px 10px 10px;
	width: 250px;
	height: 155px;
	text-align: center;
	font-size: 20px;
	float: left;
}

.fourth {
	margin: 5px 10px 10px 10px;
	width: 570px;
	height: 175px;
	text-align: left;
	font-size: 20px;
	float: left;
}

.Fifth {
	margin: 5px 10px 10px 10px;
	width: 150px;
	height: 175px;
	text-align: center;
	font-size: 20px;
	float: left;
}

.p3 {
	margin-top: 50px;
	color: #55cadd;
	font-weight: bold;
	font-size: 17pt;
}

.p4 {
	margin-top: 30px;
	font-size: 13px;
	color: red;
}

.bbttzzz {
	width: 150px;
	height: 50px;
	color: black;
	cursor: pointer;
	background-color: #95deea;
	border-radius: 5px;
	margin-top: 20px;
}

.bbttzzz:hover {
	background-color: #c7c9f4;
}

.f1 {
	border-bottom: 1px solid orange;
	text-align: left;
	font-size: 17px;
	margin-left: 40px;
	color: red;
	width: 500px;
}

.f50 {
	text-align: left;
	font-size: 20px;
	margin-left: 40px;
	margin-top: 10px;
	color: orange;
	width: 500px;
	float: left;

}

.f22 {
	width: 250px;
	height:40px;
	float: left;
	border-bottom: 1px solid orange;
}

.f23 {
	width: 450px;
	float: left;
	margin:auto;	
}

.f24 {
	height:40px;
	width: 250px;
	float: left;
	border-bottom: 1px solid orange;
}

.f25 {
	margin-left: 100px;
	margin-top:20px;
	width: 400px;
	float: left;
	text-align: left;
}

.f26 {
	margin-top: 10px;
	width: 250px;
	height: 35px;
}

.f27 {
	margin-top: 10px;
	width: 240px;
	height: 35px;
}

.f28 {
	width: 65px;
	height: 40px;
	border-radius: 10px;
	background-color: #dceefa;
	color:black;
	margin-left: 10px;
	margin-top: 10px;
}

.f28:hover{
	background-color: #476e9e;
	color: white;}
	
	.f28:active{
		position: relative;
	top: 1px;
	}
.f30 {
	border-bottom: 1px solid orange;
	text-align: left;
	font-size: 17px;
	margin-left: 40px;
	color: red;
	width: 300px;
}

.f31 {
	margin-top: 10px;
}

.f32 {
	width: 380px;
	margin-top: 10px;
	margin-left: 40px;
	padding-top: 10px;
	float: left;
	text-align: left;
}

.f33 {
	padding-top: 10px;
	margin-top: 20px;
	margin-left: 40px;
	text-align: left;
	font-size: 20px;
}

.b3 {
width: 65px;
	height: 40px;
	border-radius: 10px;
	background-color: #dceefa;
	color:black;
	margin-left: 10px;
	margin-top: 10px;
}
.b3:hover{
	background-color: #476e9e;
	color: white;}
	.b3:active{
		position: relative;
	top: 1px;
	}

textarea {
	margin-top: 15px;
	resize: none;
	border: 1px solid black;
}

.f3 {
	color: black;
}

.f4 {
	margin-top: 15px;
	color: black;
}

.f5 {
	float: left;
	margin-left: 50px;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="total"></div>
	<div id="l1"></div>
	<div id="l3"></div>
	<div id="w3"></div>

	<div id="mypagemain">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>

		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
				<h2>출품작 구매 내역</h2>
			</div>
			<div id="renking"></div>
			<div id="sixth">${MPpaging}</div>
			<div id="footer">
				<hr style="width: 100%; border: 2px solid coral; align: center;">
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
<script>
	var apList = ${apList}; 
	console.log(11, apList);

	var main = "";

	for (var i = 0; i < apList.length; i++) {
		if (apList[i].aup_step == 1) {
			main += "<div class='first'><div class='second'><div class='p1'>"
					+ apList[i].aut_date
					+ "</div><div class='p2'>운송장번호 : -</div></div>"
					+ "<div class='third'><a href='auctionRead?au_num="
					+ apList[i].aup_ranum
					+ "'><img class='imgg' src='/resources/images/"
					+ apList[i].aui_img
					+ "'/ width='100%' height='100%'></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ apList[i].aup_ptnum
					+ "<br>상품명 :"
					+ apList[i].au_title
					+ "<br>"
					+ "구매 금액 :"
					+ apList[i].aup_price
					+ "<br>상품 수량 :"
					+ apList[i].aup_qty
					+ "<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><input class='bbttzzz' id='btzRevM' type='button' onclick=\"javascript:shippingInfo('"
					+ apList[i].aup_ptnum
					+ "')\" value='요청'/><br>"
					+ "<input class='bbttzzz' type='button' onclick=\"javascript:auccancel('"
					+ apList[i].aup_ptnum + "')\" value='취소'/></div></div>"

		} else if (apList[i].aup_step == 2) {
			main += "<div class='first'><div class='second'><div class='p1'>"
					+ apList[i].aut_date
					+ "</div><div class='p2'>운송장번호 : -</div></div>"
					+ "<div class='third'><a href='auctionRead?au_num="
					+ apList[i].aup_ranum
					+ "'><img class='imgg' src='/resources/images/"
					+ apList[i].aui_img
					+ "'/ width='100%' height='100%'></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ apList[i].aup_ptnum
					+ "<br>상품명 :"
					+ apList[i].au_title
					+ "<br>"
					+ "구매 금액 :"
					+ apList[i].aup_price
					+ "<br>상품 수량 :"
					+ apList[i].aup_qty
					+ "<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><p class='p3'>배송대기중...</p></div></div>";

		} else if (apList[i].aup_step == 3) {
			main += "<div class='first'><div class='second'><div class='p1'>"
					+ apList[i].aut_date
					+ "</div><div class='p2'>운송장번호 :"
					+ apList[i].aup_track
					+ "</div></div>"
					+ "<div class='third'><a href='auctionRead?au_num="
					+ apList[i].aup_ranum
					+ "'><img class='imgg' src='/resources/images/"
					+ apList[i].aui_img
					+ "'/ width='100%' height='100%'></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ apList[i].aup_ptnum
					+ "<br>상품명 :"
					+ apList[i].au_title
					+ "<br>"
					+ "구매 금액 :"
					+ apList[i].aup_price
					+ "<br>상품 수량 :"
					+ apList[i].aup_qty
					+ "<br>"
					+ "<p class='p4'>구매후기 작성버튼을 누르시면 수령확인이 완료됩니다. <br> 기타 문의는 고객센터를 이용해주세요!</p></div>"
					+ "<div class='Fifth'><input class='bbttzzz' type='button' onclick=\"location.href='scquestion'\" value='고객센터 문의'/><br>"
					+ "<input class='bbttzzz' type='button' onclick=\"review('"
					+ apList[i].aup_ptnum
					+ "')\" value='구매후기 작성'/></div></div>";

		} else if (apList[i].aup_step == 4) {
			main += "<div class='first'><div class='second'><div class='p1'>"
					+ apList[i].aut_date
					+ "</div><div class='p2'>운송장번호 :"
					+ apList[i].aup_track
					+ "</div></div>"
					+ "<div class='third'><a href='auctionRead?au_num="
					+ apList[i].aup_ranum
					+ "'><img class='imgg' src='/resources/images/"
					+ apList[i].aui_img
					+ "'/ width='100%' height='100%'></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ apList[i].aup_ptnum
					+ "<br>상품명 :"
					+ apList[i].au_title
					+ "<br>"
					+ "구매 금액 :"
					+ apList[i].aup_price
					+ "<br>상품 수량 :"
					+ apList[i].aup_qty
					+ "<br>"
					+ "<p class='p4'>완료된 거래입니다.<br> 물건에 대한 불만이나, 기타 문의사항은 고객센터를 이용해주세요!</p></div>"
					+ "<div class='Fifth'><p class='p3'>완료</p></div></div>";
		}
	}

	$('#renking').html(main);

	function shippingInfo(even) {

		var form = {
			aup_ptnum : even
		}
		var sub = "";
		$
				.ajax({
					url : 'enter',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {
						console.log("1234567" + data.aup_ptnum);
						sub += "<form action='aucapply' method='post' onsubmit='return reqCheck();'>"
								+ "<div id='r2'>"
						if (data.aut_kind == "I") {
							sub += "<div class='f1'>즉시구매<input type='hidden' name='aut_kind'></div>"
						} else if (data.aut_kind == "O") {
							sub += +"<div class='f1'>낙찰<input type='hidden' name='aut_kind'></div>"
						} else {
							sub += +"<div class='f1'>입찰<input type='hidden' name='aut_kind'></div>"
						}
						;
						sub += "<div class='f50'>"
								+ data.au_mbid_w
								+ "님에게 의뢰 요청(배송정보입력)</div>"
								+ "<div class='f20'>"
								+ +"<div class='f21'><br><br>거래번호 :"

								+ data.aup_ptnum
								+ "<input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ></div>"
								+ "<div class='f23' style='font-size:25px; margin:auto;'>"
								+ data.au_title
								+ "</div>"
								+ "<div class='f22'>가격  "
								+ data.aup_price
								+ "<input type='hidden' name='aup_price' value='"+data.aup_price+"' ></div>"
								+ "<div class='f24'>아이디  "
								+ data.aup_mbid_n
								+ "<input type='hidden' name='aup_mbid_n' value='"+data.aup_mbid_n+"'></div></div>"
								+ "<div class='f25'>이름 <input id='mb_name' class='f26' type='text' name='aup_name'><br>"
								+ "주소 <input id='mb_add' class='f26' type='text' name='aup_address'><br>"
								+ "연락처 <input id='mb_pho' class='f27' type='text' name='aup_phone'></div>"
								+ "<div id='btn22'><input class='f28' type='submit' value='요청'>"
								+ "<input class='f28' type='button' id='back' value='취소'></div></div></div></form>";

						$('#total').css("display", "inline");
						$('#l1').css("display", "inline");
						$('#l1').html(sub);
						$("#back").click(function() {
							$('#total').css("display", "none");
							$('#l1').css("display", "none");
						});
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax

	}//end sho

	function reqCheck() {
		var bb = $("#mb_name");
		var cc = $("#mb_pho");
		var aa = $("#mb_add");

		if (bb.val() == "") {
			alert("이름을 입력해주세요.");
			$("#mb_name").focus();
			return false;
		} else if (cc.val() == "") {
			alert("핸드폰 번호를 입력해주세요.");
			$("#mb_pho").focus();
			return false;
		} else if (aa.val() == "") {
			alert("주소를 입력해주세요.");
			$("#mb_add").focus();
			return false;
		}

	}

	function review(even) {

		var form = {
			aup_ptnum : even
		}
		var bb = "";
		$.ajax({
					url : 'reviewboard',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {
						alert('해당 상품을 추천하였습니다.');
						console.log("1234567" + data.aup_ptnum);
						bb += "<form action='reviewBoardWrite' method='post' enctype='multipart/form-data' onsubmit='return boardCheck();'>"
								+ "<div id='q2'>"
						if (data.aut_kind == "I") {
							bb += "<div class='f1'>즉시구매<input type='hidden' name='aut_kind'></div><br>"
						} else if (data.aut_kind == "O") {
							bb += +"<div class='f1'>낙찰<input type='hidden' name='aut_kind'></div><br>"
						} else {
							bb += +"<div class='f1'>입찰<input type='hidden' name='aut_kind'></div><br>"
						}
						;
						bb += "<h3 class='f3'>수령 확인 및구매 후기 쓰기</h3><br/></hr><input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ><br>"
								+ "<div class='f2'>상품이름 :"
								+ data.au_title
								+ "<input type='button' id='butt' value='추천하기' onclick=\"good('"
								+ data.au_mbid_w
								+ "')\"></div>"
								+ "<input type='hidden' name='au_mbid_w' value='"
								+ data.au_mbid_w
								+ "')>"
								+ "<input type='hidden' name='aup_price' value='"
								+ data.aup_price
								+ "')>"
								+ "<div class='f4'>구매후기 제목 :<input id='title' type='text' name='bd_title'><br>"
								+ "<textarea id='cont' rows='10' cols='70' name='bd_contents' placeholder='고객님들의 소중한 말 한마디가 작가 회원님들의 힘이 됩니다.'></textarea></div>"
								+ "<div class='f5'><input type='file' name='bd_imgSysName' id='bd_imgSysName' value='파일 첨부'  onchange='fileChk(this)' multiple>"
								+ "<input type='hidden' id='fileCheck' value='0' name='fileCheck'></div>"
								+ "<div class='f6'><input class='b3' type='submit' value='완료'>"
								+ "<input class='b3' type='button' id='backSetp' value='취소'></div></div></form>";

						$('#total').css("display", "inline");
						$('#l3').css("display", "inline");

						$('#l3').html(bb);
						$('#backSetp').click(function() {
							$('#total').css("display", "none");
							$('#l3').css("display", "none");
						});
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax
	}//end review

	function boardCheck() {
		var aa = $("#title");
		var bb = $("#cont");
		var cc = $("#fileCheck");
		if (aa.val() == "") {
			alert("제목을 입력해 주세요!!");
			$("#title").focus();
			return false;
		} else if (bb.val() == "") {
			alert("내용을 입력해 주세요!!");
			$("#cont").focus();
			return false;
		} else if (cc.val() == 0) {
			alert("파일을 첨부하세요");
			$("#fileCheck").focus();
			return false;
		}
	}

	function auccancel(even) {

		var form = {
			aup_ptnum : even
		}
		var cc = "";
		$
				.ajax({
					url : 'auccancelDelete',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {

						cc += "<form action='auccancel' method='post' onsubmit='return cencelCheck();'>"
								+ "<div id='c2'>"
						if (data.aut_kind == "I") {
							cc += "<div class='f30'>즉시구매<input type='hidden' name='aut_kind'></div>"
						} else if (data.aut_kind == "O") {
							cc += +"<div class='f30'>낙찰<input type='hidden' name='aut_kind'></div>"
						}
						;
						cc += "<div class='f31'>출품 구매 취소하기<input type='hidden' name='aup_ptnum' value='"+data.aup_ptnum+"' ></div>"
								+ "<div class='f32'>상품이름 :"
								+ data.au_title
								+ "<br>"
								+ "가격 : "
								+ data.aup_price
								+ "<input type='hidden' name='aup_price' value='"+data.aup_price+"' >&emsp;&emsp;"
								+ "아이디 : "
								+ data.aup_mbid_n
								+ "<input type='hidden' name='aup_mbid_n' value='"+data.aup_mbid_n+"'></div>"
								+ "<div class='f33'><input type='hidden' name='aup_ranum' value='"+data.aup_ranum+"'>"
								+ "<input type='hidden' name='aut_date' value='"+data.aut_date+"'>"
								+ "<input type='hidden' name='au_mbid_w' value='"+data.au_mbid_w+"'><hr>"
								+ "의뢰 취소 사유<br>"
								+ "<textarea id='subm' rows='7' cols='50' name='nf_contents'></textarea></div>"
								+ "<div class='f6'><input class='b3' type='submit' value='취소하기'>"
								+ "<input class='b3' type='button' id='backSetp' value='돌아가기'></div></div></form>";

						$('#total').css("display", "inline");
						$('#w3').css("display", "inline");
						$('#w3').html(cc);
						$("#backSetp").click(function() {
							$('#total').css("display", "none");
							$('#w3').css("display", "none");
						});
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax
	}//end review

	function cencelCheck() {
		var aa = $("#subm")
		if (aa.val() == "") {
			alert("취소 사유를 입력해 주세요!!");
			$("#subm").focus();
			return false;
		}
	}

	$('#setpT').html(main);
	function good(data) {
		var btn = $('#butt');
		$.ajax({
			url : "goods",
			type : "post",
			data : {
				idw : data
			},
			success : function(data) {
				alert('해당 상품을 추천하였습니다.');
				console.log("123456" + data);
				//btn.disabled = 'disabled'
				var bu = document.getElementById('butt');
				bu.disabled = true;

			},
			error : function(error) {
				alert('정상적인 추천이 실패했습니다.');
				console.log(error);
			}

		});//end good(ajax)
	}//end good

	$("#total").click(function() {
		$("#total").css("display", "none");
		$("#l1").css("display", "none");
		$("#w3").css("display", "none");
	}); // end total
	$("#back").click(function() {
		$("#total").css("display", "none");
		$("#l1").css("display", "none");
	}); //end back

	$("#review").click(function() {
		$('#total').css("display", "inline")
		$('#Q1').css("display", "inline")
	});//end review
	$("#total").click(function() {
		$("#total").css("display", "none");
		$("#Q1").css("display", "none");
	});// end total
	$("#backSetp").click(function() {
		$("#total").css("display", "none");
		$("#Q1").css("display", "none");
	});//end backSetp	

	function fileChk(elem) {
		console.dir(elem);
		if (elem.value == "") {
			console.log("empty");
			$('#fileCheck').val(0); //파일 첨부 안했음
		} else {
			console.log("Notempty")
			$('#fileCheck').val(1);//파일 첨부 했음
		}
	}//end fileChk
</script>

</html>
