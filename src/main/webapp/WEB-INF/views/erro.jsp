<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Erro</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>
	<h1>Ocorreu um erro</h1>

    <p>${erro}</p>

    <a href="${pageContext.request.contextPath}/home">Voltar ao início</a>
</body>
</html>