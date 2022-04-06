package br.com.java.spring.mvc.model;

import javax.persistence.*;

@Entity
@Table(name = "enderecoCobranca") //billingAddress
public class EnderecoCobranca {

	private static final long serialVersionUID = 7551999649936522523L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String enderecoCobrancaId;

	private String endereco;
	private String cidade;
	private String estado;
	private String cep;
	private String pais;

	@OneToOne(mappedBy = "enderecoCobranca")
	private Cliente cliente;

	public String getEnderecoCobrancaId() {
		return enderecoCobrancaId;
	}
	
	public void setEnderecoCobrancaId(String enderecoCobrancaId) {
		this.enderecoCobrancaId = enderecoCobrancaId;
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
