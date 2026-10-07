package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Usuario;

import java.io.IOException;
import java.sql.SQLException;

import dao.UsuarioDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
    
    private UsuarioDAO usuDAO = new UsuarioDAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("textEmail");
		String senha = request.getParameter("textSenha");
		
		try {
			Usuario usu = usuDAO.Logar(email, senha);
			
			if(usu != null) {
				HttpSession sessao = request.getSession();
				sessao.setAttribute("usuarioLogado", usu);
				response.sendRedirect(request.getContextPath() + "/home");
			} else {
				request.setAttribute("erro", "e-Mail ou senha inválido!");
				RequestDispatcher dispacher = request.getRequestDispatcher("/login.jsp");
				dispacher.forward(request, response);
			}
		} catch (SQLException e) {
			throw new ServletException("Erro ao autenticar usuário.", e);
		}
		
	}
	
}
