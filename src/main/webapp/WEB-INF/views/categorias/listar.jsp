<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categorias</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>
	<h1>Categorias</h1>

    <a href="${pageContext.request.contextPath}/home">Início</a>
    <br>
    <a href="${pageContext.request.contextPath}/categorias/nova">Nova categoria</a>

    <h2>Lista de categorias</h2>

    <table border="1">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Ativa</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="c" items="${categorias}">
                <tr>
                    <td>${c.nome}</td>
                    <td>${c.descricao}</td>
                    <td>${c.ativo ? 'Sim' : 'Não'}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/categorias/editar?id=${c.id}">
                            Editar
                        </a>

                        <c:if test="${c.ativo}">
                            |
                            <a href="${pageContext.request.contextPath}/categorias/excluir?id=${c.id}"
                               onclick="return confirm('Deseja realmente excluir esta categoria?');">
                                Excluir
                            </a>
                        </c:if>

                        <c:if test="${not c.ativo}">
                            |
                            <a href="${pageContext.request.contextPath}/categorias/reativar?id=${c.id}">
                                Reativar
                            </a>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <c:if test="${empty categorias}">
        <p>Nenhuma categoria cadastrada.</p>
    </c:if>
</body>
</html>