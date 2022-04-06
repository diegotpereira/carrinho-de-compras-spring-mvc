package br.com.java.spring.mvc.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "enderecoEntrega") // shippingAddress
public class EnderecoEntrega implements Serializable{
	
	private static final long serialVersionUID = 7551999649936522523L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String enderecoEntregaId;

	private String endereco;
	private String cidade;
	private String estado;
	private String cep;
	private String pais;

	@OneToOne(mappedBy = "enderecoEntrega")
	private Cliente cliente;

	public String getEnderecoCobrancaId() {
		return enderecoEntregaId;
	}
	
	public void setEnderecoCobrancaId(String enderecoCobrancaId) {
		this.enderecoEntregaId = enderecoCobrancaId;
	}

	public Cliente getCliente() {
		return cliente;
	}
	
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
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
