<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
	width: 1518px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid #F5BCA9;
	background-color: white;
	width: 1520px;
	height: 170px;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
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

#loginmsg {
	float: left;
	width: 130px;
	height: 50px;
	margin-left: 10px;
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
	border: 3px solid orange;
	position: absolute;
	width: 410px;
	height: 370px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 30px;
	text-align: center;
	background-color: white;
	display: none;
	font-size: 22px;
	top: 500px;
	left: 900px;
}

#l3 {
	position: absolute;
	width: 600px;
	height: 530px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top: 500px;
	left: 900px;
}

#w3 {
	position: absolute;
	width: 600px;
	height: 530px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 70px;
	text-align: center;
	background-color: #FFE08C;
	display: none;
	font-size: 22px;
	top: 500px;
	left: 900px;
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

.t1 {
	top: 100;
	left: -200;
}

#mypagemain {
	width: 1518px;
	height: 1200px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
	margin-top: 40px;
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
	top: 1130px;
	left: 800px;
}

.first {
	border: 1px solid orange;
	margin: 10px 10px 10px 10px;
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
	border: 2px solid coral;
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
	background-color: #F6D8CE;
	margin: 10px 10px 10px 10px;
	width: 1040px;
	height: 40px;
	text-align: center;
	font-size: 20px;
	float: left;
}

.third {
	margin: 5px 10px 10px 10px;
	width: 270px;
	height: 175px;
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
	width: 130px;
	height: 175px;
	text-align: center;
	font-size: 20px;
	float: left;
}

.p3 {
	margin-top: 50px;
	color: coral;
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

#c1 {
	border: 3px solid orange;
	position: absolute;
	width: 400px;
	height: 330px;
	border-radius: 100px;
	z-index: 1002;
	padding-top: 30px;
	text-align: center;
	background-color: white;
	display: none;
	font-size: 22px;
	top: 500px;
	left: 900px;
}

#footer {
	border: 1px solid red;
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	border: 1px solid #f0f0f0;
}

.f1 {
	border-bottom: 1px solid gray;
	text-align: left;
	font-size: 17px;
	margin-left: 40px;
	color: red;
	width: 300px;
}

.h1 {
	margin-top: 10px;
}

.f2 {
	margin-top: 10px;
	text-align: left;
	margin-left: 40px;
	width: 350px;
}

hr {
	border: 1px solid orange;
}

.f3 {
	margin-top: 10px;
	text-align: left;
	margin-left: 30px;
	width: 350px;
}

#rap_track {
	margin-top: 10px;
	width: 300px;
	height: 30px;
}

.b3 {
	margin-top: 10px;
	width: 65px;
	height: 40px;
	border-radius: 10px;
	background-color: orange;
	opacity: 0.45;
}

.f4 {
	text-align: left;
	font-size: 17px;
	margin-left: 40px;
	color: #BDBDBD;
	width: 350px;
}

.imgg {
	height: 180px;
}
</style>

</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<body>
	<div id="total"></div>
	<div id="l1"></div>
	<div id="c1"></div>
	<div id="main">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	<div id="mypagemain">
		<jsp:include page="Mapagemain.jsp" />


		<div id="rightmain">
			<div id="notice">
				<h2>제작의뢰 판매 내역</h2>
			</div>
			<div id="renking"></div>
			<div id="sixth">${RApaging}</div>
		</div>
		<div id="footer">
			<hr style="width: 100%; border: 2px solid coral; align: center;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>

</body>
<script type="text/javascript">
	var revAList = ${revAList};
	console.log(revAList);

	var main = "";

	for (var i = 0; i < revAList.length; i++) {
		if (revAList[i].rap_step == 1) {
			main += "<div class='first'><div class='second'>"
			if (revAList[i].ra_oc == "O") {
				main += "<div class='p1'>공개</div><div class='p2'>운송장번호 : -</div></div>"
			} else {
				main += "<div class='p1'>비공개</div><div class='p2'>운송장번호 : -</div></div>"
			}
			main += "<div class='third'><a href='revauctionread?ra_num="
					+ revAList[i].rap_ranum
					+ "'><img class='imgg' src='/revauction/"
					+ revAList[i].ra_image
					+ "' width='100%' height='100%'/></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ revAList[i].rap_ptnum
					+ "<br>상품명 :"
					+ revAList[i].ra_title
					+ "<br>"
					+ "구매 금액 :"
					+ revAList[i].rap_price
					+ "<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><p class='p3'>의뢰 결정을 <br> 기다리는 중입니다.</p></div></div>";

		} else if (revAList[i].rap_step == 2) {
			main += "<div class='first'><div class='second'>"
			if (revAList[i].ra_oc == "O") {
				main += "<div class='p1'>공개</div><div class='p2'>운송장번호 : -</div></div>"
			} else {
				main += "<div class='p1'>비공개</div><div class='p2'>운송장번호 : -</div></div>"
			}
			main += "<div class='third'><a href='revauctionread?ra_num="
					+ revAList[i].rap_ranum
					+ "'><img class='imgg' src='/revauction/"
					+ revAList[i].ra_image
					+ "' width='100%' height='100%'/></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ revAList[i].rap_ptnum
					+ "<br>상품명 :"
					+ revAList[i].ra_title
					+ "<br>"
					+ "구매 금액 :"
					+ revAList[i].rap_price
					+ "<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><input id='btzRevM' class='bbttzzz' type='button' onclick=\"javascript:deliinRav('"
					+ revAList[i].rap_ptnum
					+ "')\" value='배송보내기'/><br>"
					+ "<input type='button' class='bbttzzz' onclick=\"javascript:revdelinum('"
					+ revAList[i].rap_ptnum
					+ "')\" value='의뢰인 배송정보'/></div></div>"

		} else if (revAList[i].rap_step == 3) {
			main += "<div class='first'><div class='second'>"
			if (revAList[i].ra_oc == "O") {
				main += "<div class='p1'>공개</div><div class='p2'>운송장번호 :"+ revAList[i].rap_track + "</div></div>"
			} else {
				main += "<div class='p1'>비공개</div><div class='p2'>운송장번호 :"+ revAList[i].rap_track + "</div></div>"
			}
			main += "<div class='third'><a href='revauctionread?ra_num="
					+ revAList[i].rap_ranum
					+ "'><img class='imgg' src='/revauction/"
					+ revAList[i].ra_image
					+ "' width='100%' height='100%'/></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ revAList[i].rap_ptnum
					+ "<br>상품명 :"
					+ revAList[i].ra_title
					+ "<br>"
					+ "구매 금액 :"
					+ revAList[i].rap_price
					+ "<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><p class='p3'>수령 확인 <br>대기중입니다.</p></div></div>";

		} else if (revAList[i].rap_step == 4) {
			main += "<div class='first'><div class='second'>"
			if (revAList[i].ra_oc == "O") {
				main += "<div class='p1'>공개</div><div class='p2'>운송장번호 :"
						+ revAList[i].rap_track + "</div></div>"
			} else {
				main += "<div class='p1'>비공개</div><div class='p2'>운송장번호 :"
						+ revAList[i].rap_track + "</div></div>"
			}
			main += "<div class='third'><a href='revauctionread?ra_num="
					+ revAList[i].rap_ranum
					+ "'><img class='imgg' src='/revauction/"
					+ revAList[i].ra_image
					+ "' width='100%' height='100%'/></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ revAList[i].rap_ptnum
					+ "<br>상품명 :"
					+ revAList[i].ra_title
					+ "<br>"
					+ "구매 금액 :"
					+ revAList[i].rap_price
					+ "<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><p class='p3'>완료</p></div></div>";

		} else {
			main += "<div class='first'><div class='second'>"
			if (revAList[i].ra_oc == "O") {
				main += "<div class='p1'>공개</div><div class='p2'>운송장번호 : -</div></div>"
			} else {
				main += "<div class='p1'>비공개</div><div class='p2'>운송장번호 : -</div></div>"
			}
			main += "<div class='third'><a href='revauctionread?ra_num="
					+ revAList[i].rap_ranum
					+ "'><img class='imgg' src='/revauction/"
					+ revAList[i].ra_image
					+ "' width='100%' height='100%'/></a></div>"
					+ "<div class='fourth'>상품번호 :"
					+ revAList[i].rap_ptnum
					+ "<br>상품명 :"
					+ revAList[i].ra_title
					+ "<br>"
					+ "구매 금액 :"
					+ revAList[i].rap_price
					+ "<br>"
					+ "<p class='p4'>작업이 확정된 시점의 요청사항 추가는 추가 요금 및,<br> 작업 완료일이 늘어날 수 있습니다.</p></div>"
					+ "<div class='Fifth'><input id='step5' class='bbttzzz' type='button' onclick=\"location.href='stepfive?rap_ptnum="
					+ revAList[i].rap_ptnum
					+ "'\" value='승인'/><br>"
					+ "<input id='censtep5' type='button' class='bbttzzz' onclick=\"location.href='stepfiveDele?rap_ptnum="
					+ revAList[i].rap_ptnum + "&rap_mbid_w="
					+ revAList[i].rap_mbid_w + "&rap_ranum="
					+ revAList[i].rap_ranum + "'\" value='거절'/></div></div>"

		}
	}
	$('#renking').html(main);

	$('#step5').click(function() {
		var secc = "${secc}"
		if (secc == "1") {
			alert("승인이 거절 되었습니다.")

		} else {
			alert("승인하셨습니다.")
		}
	});
	$('#censtep5').click(function() {
		var secc = "${secc}"
		if (secc == "2") {
			alert("거절이 거절 되었습니다.")

		} else {
			alert("거절하셨습니다.")
		}
	});

	function deliinRav(even) {
		var form = {
			rap_ptnum : even
		}
		var sub = "";
		$.ajax({

					url : 'delinumSelect',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {
						console.log(data.ra_oc);
						sub += "<form action='revdelinumupload' method='post' onsubmit='return delinumCheck(); '>"
								+ "<div id='l2'>"
						if (data.ra_oc == "O") {
							sub += "<div class='f1'>공개<input type='hidden' name='ra_oc'></div>"
						} else if (data.ra_oc == "C") {
							sub += "<div class='f1'>비공개<input type='hidden' name='ra_oc'></div>"
						}
						sub += "<h3 class='h1'>운송장 입력</h3><input type='hidden' name='rap_ptnum' value='"+data.rap_ptnum+"' >"
								+ "<div class='f2'>상품이름 :"
								+ data.ra_title
								+ "<br>"
								+ "가격 : "
								+ data.rap_price
								+ "<input type='hidden' name='aup_price' value='"+data.rap_price+"' ></div><hr>"
								+ "<div class='f3'><input type='hidden' name='rap_mbid_w' value='"+data.rap_mbid_w+"'>"
								+ "운송장번호<br/><input type='text' id='rap_track' name='rap_track'></div>"
								+ "<div class='f6'> <input class='b3' type='submit' value='보내기'>"
								+ "<input class='b3' type='button' id='back' value='취소'></div>"
								+ "<div class='f4'>('"
								+ data.rap_mbid_n
								+ "'님에게 운송장 번호가 전송 됩니다.)</div></div></form>";

						$('#total').css("display", "inline");
						$('#l1').css("display", "inline");
						$('#l1').html(sub);
						$('#back').click(function() {
							$('#total').css("display", "none");
							$('#l1').css("display", "none");
						});
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax
	}//End deliinRav

	function delinumCheck() {
		if ($("#rap_track").val() == "") {
			swal("운송장번호를 입력하지 않았습니다.");
			$("#rap_track").focus();
			return false;
		}
	}

	function revdelinum(even) {
		var form = {
			rap_ptnum : even
		}
		var cub = "";
		$.ajax({
					url : 'delinumSelect',
					type : 'post',
					data : JSON.stringify(form),
					contentType : "application/json; charset=utf-8;",
					dataType : 'json',
					success : function(data) {

						cub += "<div id='c2'>"
						if (data.ra_oc == "O") {
							cub += "<div class='f1'>공개<input type='hidden' name='ra_oc'></div>"
						} else {

							cub += +"<div class='f1'>비공개<input type='hidden' name='ra_oc'></div>"
						}
						;
						cub += "<h3 class='h1'>의뢰인 배송정보</h3>"
								+ "<div class='f2'>아이디 :"
								+ data.rap_mbid_n
								+ "<br>"
								+ "이름: "
								+ data.rap_name
								+ "<br>"
								+ "주소:"
								+ data.rap_address
								+ "<br>"
								+ "연락처:"
								+ data.rap_phone
								+ "</div>"
								+ "<input class='b3' type='button' id='back' value='확인'></div>";

						$('#total').css("display", "inline");
						$('#c1 ').css("display", "inline");
						$('#c1').html(cub);
						$('#back').click(function() {
							$('#total').css("display", "none");
							$('#c1').css("display", "none");
						});
					},

					error : function(error) {
						alert('정상적인 추천이 실패했습니다.');
						console.log(error);
					}
				});//end ajax
	}//end revdelinum

	/* $("#action").click(function() {
		$('#lightbox-shadow').css("display", "inline")
		$('#lightbox').css("display", "inline")
	});
	$("#delivery").click(function() {
		$('#lightbox-shadow1').css("display", "inline")
		$('#lightbox1').css("display", "inline")
	}); */
</script>

</html>
