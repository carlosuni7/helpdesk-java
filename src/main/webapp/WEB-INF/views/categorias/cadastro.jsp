<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Nova Categoria</h1>
	
	<form action="${pageContext.request.contextPath }/SalvarCategoriasServlet" method="post">
	
	<label>Nome:</label>
	<input type="text" name="txtNome" required><br>
	
	<label>Descrição:</label>
	<input type="text" name="txtDescricao" required><br>
	
	<button type="submit">Salvar</button>
	</form>
	
	
</body>
</html>