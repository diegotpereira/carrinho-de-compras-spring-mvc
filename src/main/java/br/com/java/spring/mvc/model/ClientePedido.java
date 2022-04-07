package br.com.java.spring.mvc.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "clientepedido")
public class ClientePedido implements Serializable{

	private static final long serialVersionUID = -6571020025726257848L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int clientePedidoId;

	@OneToOne
	@JoinColumn(name = "carrinhoId")
	private Carrinho carrinho;

	@OneToOne
	@JoinColumn(name = "clienteId")
	private Cliente cliente;

	@OneToOne
	@JoinColumn(name = "enderecoEntregaId")
	private EnderecoEntrega enderecoEntrega;

	@OneToOne
	@JoinColumn(name = "enderecoCobrancaId")
	private EnderecoCobranca enderecoCobranca;

	public int getClientePedidoId() {
		return clientePedidoId;
	}

	public void setClientePedidoId(int clientePedidoId) {
		this.clientePedidoId = clientePedidoId;
	}

	public Carrinho getCarrinho() {
		return carrinho;
	}

	public void setCarrinho(Carrinho carrinho) {
		this.carrinho = carrinho;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public EnderecoEntrega getEnderecoEntrega() {
		return enderecoEntrega;
	}

	public void setEnderecoEntrega(EnderecoEntrega enderecoEntrega) {
		this.enderecoEntrega = enderecoEntrega;
	}

	public EnderecoCobranca getEnderecoCobranca() {
		return enderecoCobranca;
	}

	public void setEnderecoCobranca(EnderecoCobranca enderecoCobranca) {
		this.enderecoCobranca = enderecoCobranca;
	}
}
