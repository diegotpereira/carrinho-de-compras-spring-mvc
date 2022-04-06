package br.com.java.spring.mvc.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "enderecoCobranca") //billingAddress
public class EnderecoCobranca implements Serializable{

	private static final long serialVersionUID = 1028098616457762743L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int enderecoCobrancaId;

	private String endereco;
	private String cidade;
	private String estado;
	private String cep;
	private String pais;

	@OneToOne(mappedBy = "enderecoCobranca")
	private Cliente cliente;
	
	public Cliente getCliente() {
		return cliente;
	}
	
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public int getEnderecoCobrancaId() {
		return enderecoCobrancaId;
	}
	
	public void setEnderecoCobrancaId(int enderecoCobrancaId) {
		this.enderecoCobrancaId = enderecoCobrancaId;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}
	
}
