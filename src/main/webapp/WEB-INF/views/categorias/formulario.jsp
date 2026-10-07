<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nova Categoria</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>
	
	<h1>Nova Categoria</h1>

    <form action="${pageContext.request.contextPath}/categorias/salvar" method="post">

        <label>Nome:</label>
        <input type="text" name="nome" required><br>

        <label>Descrição:</label>
        <input type="text" name="descricao"><br>

        <button type="submit">Salvar</button>
    </form>

    <a href="${pageContext.request.contextPath}/categorias">Voltar</a>
	
	
</body>
</html>