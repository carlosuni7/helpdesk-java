<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Hello World</h1>

<form action="${pageContext.request.contextPath }/login" method="post">
	
	<label>Email:</label>
	<input type="text" name="txtEmail" required><br>
	
	<label>Senha:</label>
	<input type="text" name="txtSenha" required><br>
	
	<button type="submit">Logar</button>
	</form>

</body>
</html>