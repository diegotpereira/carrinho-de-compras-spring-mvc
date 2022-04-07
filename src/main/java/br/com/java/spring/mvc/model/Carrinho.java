package br.com.java.spring.mvc.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "carrinho")
public class Carrinho implements Serializable{

	private static final long serialVersionUID = 8436097833452420298L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int carrinhoId;

	@OneToOne
	@JoinColumn(name = "clienteId")
	@JsonIgnore
	private Cliente cliente;

	@OneToMany(mappedBy = "carrinho", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<CarrinhoItem> carrinhoItem;

	private double precoTotal;

	public int getCarrinhoId() {
		return carrinhoId;
	}

	public void setCarrinhoId(int carrinhoId) {
		this.carrinhoId = carrinhoId;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public List<CarrinhoItem> getCarrinhoItem() {
		return carrinhoItem;
	}

	public void setCarrinhoItem(List<CarrinhoItem> carrinhoItem) {
		this.carrinhoItem = carrinhoItem;
	}

	public double getPrecoTotal() {
		return precoTotal;
	}

	public void setPrecoTotal(double precoTotal) {
		this.precoTotal = precoTotal;
	}
}
