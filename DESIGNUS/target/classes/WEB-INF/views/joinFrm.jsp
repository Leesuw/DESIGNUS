<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	border-radius: 50px;
	margin: auto;
}

#joinimg {
	float: left;
	padding-top: 60px;
	text-align: center;
	width: 340px;
	height: 250px;
	border: 1px solid #FFCA6C;
}

#joinimg2 {
	float: left;
	padding-top: 60px;
	margin-left: 30px;
	text-align: center;
	width: 340px;
	height: 250px;
	border: 1px solid #FFCA6C;
}

#joinbtz {
	font-size: 45px;
	border: none;
}

#joinbtz2 {
	font-size: 45px;
	border: none;
}

.img {
	width: 70px;
	height: 70px;
}

#full {
	margin-top: 90px;
	border: none;
	width: 750px;
	height: 400px;
}
</style>

</head>
<body>
	<div id="full">
		<div id="joinimg">
			<form action="norJoinFrm" method="get">
				<img class="img" src="./images/normal.png" /><br /> <br />
				<button id="joinbtz">일반 회원</button>
			</form>
		</div>
		<div id="joinimg2">
			<form action="wriJoinFrm" method="get">
				<img class="img" src="./images/writer.png" /><br /> <br />
				<button id="joinbtz2">작가 회원</button>
			</form>
		</div>
	</div>
</body>

</html>