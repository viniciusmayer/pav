<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<script type="text/javascript" src="js/scripts.js"></script>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div id="barra">
		<a href="index.html">Cancelar</a>
	</div>

	<div id="cabecalho">
		<div id="logo"></div>
	</div>

	<div id="titulo">titulo</div>

	<c:if test="${!empty msg}">
		<div id="mensagem">
				<span>${msg}</span>
		</div>
	</c:if>

	<div id="corpo">
		<form action="login" method="post">
			<label for="email">Email</label>
			<input id="email" name="email" type="email" required/>
			<br />

			<label for="password">Password</label>
			<input id="password" name="password" type="password" required/>
			<br />

			<input class="button" type="submit" value="Login" />
			<a href="">Esqueci minha senha</a>
		</form>
	</div>

	<div id="rodape">rodape</div>
</body>
</html>