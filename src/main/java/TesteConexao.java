import java.sql.Connection;
import java.sql.SQLException;

import bd.Conexao;

public class TesteConexao {

	public static void main(String[] args) {
		
		System.out.println("Tentando conectar a base de dados");
		
		try(Connection conexao = Conexao.obterConexao()){
			if (conexao != null && !conexao.isClosed()) {
				System.out.println("SUCESSO: Conexão estabelecida com o MYSQL!");
			}
		} catch (SQLException e) {
			System.err.println("ERRO: Falha ao ligar a base de dados.");
			e.printStackTrace();
		}	
	}	
}
