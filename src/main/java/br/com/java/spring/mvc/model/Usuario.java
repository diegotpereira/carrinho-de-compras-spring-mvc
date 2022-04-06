package br.com.java.spring.mvc.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="usuarios")
public class Usuario implements Serializable{
	
	private static final long serialVersionUID = 2681531852204068105L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String usuarioId;

	private String emailId;
	private String password;
	private boolean ativado;
	
	public String getUsuarioId() {
		return usuarioId;
	}
	public void setUsuarioId(String usuarioId) {
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

	

	//@OneToOne(mappedBy="usuarios")
}
