<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página de Login</title>
<!-- Para garantir que a página encontre o ficheiro CSS 
independentemente de como a URL da 
Servlet foi chamada, utilize a variável implícita  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>

<h1>HelpDesk</h1>

<form action="${pageContext.request.contextPath }/login" method="post">
	
	<div>
		<label>Email</label>
		<input type="text" name="textEmail" required>
	</div>
	
	<div>
		<label>Senha</label>
		<input type="text" name="textSenha" required>
	</div>
	
	
	<button type="submit">Logar</button>
	</form>
	
