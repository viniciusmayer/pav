<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<script type="text/javascript" src="js/scripts.js"></script>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div id="barra">
		<span id="username">${user_name}</span> | <a href="logout" onclick="return confirmar();">Logout</a>		
	</div>

	<div id="cabecalho">
		<div id="logo"></div>
	</div>
	
	<div id="titulo">
		titulo
	</div>
	
	<div id="mensagem">
		<c:if test="${!empty msg}">
			<span>${msg}</span>
		</c:if>
	</div>
		
	<div id="corpo">
		corpo
	</div>
	
	<div id="rodape">
		rodape
	</div>
</body>
</html>