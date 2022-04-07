package br.com.java.spring.mvc.model;

import javax.persistence.*;

@Entity
@Table(name = "consulta")
public class Consultas {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private String email;
	private String assunto;
	private String mensagem;

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
	public String getAssunto() {
		return assunto;
	}
	public void setAssunto(String assunto) {
		this.assunto = assunto;
	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
}
