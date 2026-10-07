<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Categoria</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>
	<h1>Editar Categoria</h1>

    <form action="${pageContext.request.contextPath}/categorias/atualizar" method="post">

        <input type="hidden" name="id" value="${categoria.id}">

        <label>Nome:</label>
        <input type="text" name="nome" value="${categoria.nome}" required><br>

        <label>Descrição:</label>
        <input type="text" name="descricao" value="${categoria.descricao}"><br>

        <button type="submit">Salvar alterações</button>
    </form>

    <a href="${pageContext.request.contextPath}/categorias">Voltar</a>
</body>
</html>