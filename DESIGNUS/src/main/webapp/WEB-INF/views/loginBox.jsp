<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#logoimg {
	width: 250px;
	height: 100px;
	position: relative;
	top: 260px;
	left: 840px;
}

#login {
	position: relative;
	top: 300px;
	left: 750px;
	font-size: 25px;
}

#mb_id {
	width: 300;
	height: 40;
}

#mb_pw {
	width: 300;
	height: 40;
}

#logcheck {
	position: relative;
	top: 5px;
	left: 230px;
}

#mfind {
	position: relative;
	top: 5px;
	left: 90px;
}

#loginbtz {
	position: relative;
	top: 10px;
	left: 20px;
}

.btz {
	width: 400px;
	height: 50px;
	font-size: 25px;
}

#haha {
	position: relative;
	top: 300px;
	left: 920px;
	font-size: 25px;
	/*text-decoration: none;*/
}
</style>
</head>
<body>
	<a href="home"><img id="logoimg" src="img/logo"></a>

	<form action="login" name="loginFrm" method="post">
		<div id="login">
			<table id="idpw">
				<tr>
					<th>아이디</th>
					<th><input type="text" name="mb_id" id="mb_id" /></th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<th><input type="password" name="mb_pw" id="mb_pw" /></th>
				</tr>
			</table>
			<div id="logcheck">
				로그인유지<input type="checkbox" id="loging" /><br />
			</div>
			<div id="mfind">
				<a href="memberfind">아이디 | 비빌번호 찾기</a><br />
			</div>
			<div id="loginbtz">
				<button class="btz">로그인</button>
			</div>
		</div>
	</form>
	<a id="haha" href="joinfrm">회원가입</a>
</body>
</html>