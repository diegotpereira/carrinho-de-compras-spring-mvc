package br.com.java.spring.mvc.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="usuarios")
public class User implements Serializable{
	
	private static final long serialVersionUID = 2681531852204068105L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int usuarioId;

	private String usuarioNome;
	private String emailId;
	private String password;
	private boolean ativado;
	
	@OneToOne(mappedBy = "usuarios")
	private Cliente cliente;
	
	
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public String getUsuarioNome() {
		return usuarioNome;
	}
	public void setUsuarioNome(String usuarioNome) {
		this.usuarioNome = usuarioNome;
	}
	public int getUsuarioId() {
		return usuarioId;
	}
	public void setUsuarioId(int usuarioId) {
		this.usuarioId = usuarioId;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isAtivado() {
		return ativado;
	}
	public void setAtivado(boolean ativado) {
		this.ativado = ativado;
	}
}
