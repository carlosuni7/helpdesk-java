package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	private static final String URL = "jdbc:mysql://localhost:3306/helpdesk?useSSL=false&serverTimezone=UTC";
	private static final String USUARIO = "root";
	private static final String SENHA = "root";
	
	
	public static Connection obterConexao() throws SQLException{
		try {
			// Força o carregamento do driver pelo Tomcat dentro do método
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// Converte a exceção de classe não encontrada para uma SQLException
			throw new SQLException("Driver do MySQL não encontrado. Verifique se o JAR está em WEB-INF/lib.", e);
		}
		
		return DriverManager.getConnection(URL, USUARIO, SENHA);
	}
}
