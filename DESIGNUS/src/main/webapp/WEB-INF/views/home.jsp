<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<style>
#mainheader {
	border: 1px solid black;
	width: 1500px;
	height: 400px;
}
</style>
<title>Home</title>
</head>
<body>
	<div id="mainheader">
		<jsp:include page="main.jsp" />
	</div>

	<h1>Hello world!</h1>
	<h1>집에가고 싶다</h1>
	<h2>나도 가고싶다.!</h2>
	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
