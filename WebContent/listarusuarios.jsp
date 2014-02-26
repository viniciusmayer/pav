<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<span id="username">${user_name}</span><span>|</span><a href="logout" onclick="return confirmar();">Logout</a>
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
		<table id="tabela">
			<tr>
				<th>Email</th>
				<th>Senha</th>
				<th>Acoes</th> 
			</tr>
	
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td>${usuario.email}</td>
					<td>${usuario.password}</td> 
					<td class="acoes">
						<a href="">Editar</a>
						<br />
						<a href="">Deletar</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<div id="rodape">rodape</div>
</body>
</html>