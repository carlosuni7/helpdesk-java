package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bd.Conexao;
import models.Usuario;

public class UsuarioDAO {
	
public Usuario Logar(String email, String senha) throws SQLException {
		
		String sql = "select id, nome, email, senha from usuarios " +
		"where email = ? and senha = ? and ativo = true";
		
		try (Connection conexao = Conexao.obterConexao();
				PreparedStatement logar = conexao.prepareStatement(sql)){
				logar.setString(1, email);
				logar.setString(2, senha);
				
				try(ResultSet resultado = logar.executeQuery()){
					if(resultado.next()) {
						Usuario usu = new Usuario();
						usu.setId(resultado.getInt("id"));
						usu.setNome(resultado.getString("nome"));
						usu.setEmail(resultado.getString("email"));
						usu.setPerfil(resultado.getString("perfil"));
						
						return usu;
					}
				}
		}
				
		return null;
		
	}
}
