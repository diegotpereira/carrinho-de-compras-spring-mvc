package br.com.java.spring.mvc.model;
import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "cliente")
public class Cliente implements Serializable{
	
	private static final long serialVersionUID = 2652327633296064143L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String clienteId;
	private String nome;
	private String sobrenome;
	private String clienteTelefone;
	
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "enderecoEntregaId")
	private EnderecoEntrega enderecoEntrega;
	
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "enderecoCobrancaId")
	private EnderecoCobranca enderecoCobranca;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "usuarioId")
	private Usuario usuarios;
	
	public EnderecoCobranca getEnderecoCobranca() {
		return enderecoCobranca;
	}
	public void setEnderecoCobranca(EnderecoCobranca enderecoCobranca) {
		this.enderecoCobranca = enderecoCobranca;
	}
	public String getClienteId() {
		return clienteId;
	}
	public void setClienteId(String clienteId) {
		this.clienteId = clienteId;
	}

	public EnderecoEntrega getEnderecoEntrega() {
		return enderecoEntrega;
	}
	public void setEnderecoEntrega(EnderecoEntrega enderecoEntrega) {
		this.enderecoEntrega = enderecoEntrega;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public String getClienteTelefone() {
		return clienteTelefone;
	}
	public void setClienteTelefone(String clienteTelefone) {
		this.clienteTelefone = clienteTelefone;
	}
	public Usuario getUsuarios() {
		return usuarios;
	}
	public void setUsuarios(Usuario usuarios) {
		this.usuarios = usuarios;
	}
}
