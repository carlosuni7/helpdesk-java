package models;

import java.sql.Date;

public class Usuario {
	
	private int id;
    private String nome;
    private String email;
    private String senha;
    private String perfil;
    private Boolean ativo;
    private Date data_cadastro;
    
    private Usuario() {
    	
    }
    
    public Usuario(int id, String nome, String email, 
    		String senha, String perfil, boolean ativo, Date data_cadastro) {
    	super();
    	this.id = id;
    	this.nome = nome;
    	this.email = email;
    	this.senha = senha;
    	this.perfil = perfil;
    	this.ativo = ativo;
    	this.data_cadastro = data_cadastro;
    }
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Boolean getAtivo() {
		return ativo;
	}

	public void setAtivo(Boolean ativo) {
		this.ativo = ativo;
	}

	public Date getData_cadastro() {
		return data_cadastro;
	}

	public void setData_cadastro(Date data_cadastro) {
		this.data_cadastro = data_cadastro;
	}

	public String getNome() {
		return nome;
	}

}
