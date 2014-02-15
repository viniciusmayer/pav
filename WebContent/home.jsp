<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	<div id="mensagem">
		<span>${msg}</span>
	</div>
		
	<div id="corpo">
		
		corpo
	</div>
	
	<div id="rodape">
		rodape
	</div>
</body>
</html>