package br.com.java.spring.mvc.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "autoridades")
public class Autoridades implements Serializable{

	private static final long serialVersionUID = 8734140534986494039L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String autoridadeId;
	private String emailId;
	private String autoridades;
	
	public String getAutoridadeId() {
		return autoridadeId;
	}
	public void setAutoridadeId(String autoridadeId) {
		this.autoridadeId = autoridadeId;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAutoridades() {
		return autoridades;
	}
	public void setAutoridades(String autoridades) {
		this.autoridades = autoridades;
	}

	
	
}
