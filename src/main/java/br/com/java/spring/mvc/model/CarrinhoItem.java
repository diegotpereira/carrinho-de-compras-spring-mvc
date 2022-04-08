package br.com.java.spring.mvc.model;

import java.io.Serializable;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "carrinhoItem")
public class CarrinhoItem implements Serializable{

	private static final long serialVersionUID = -2455760938054036364L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int carrinhoItemId;

	private int qualidade;

	private double preco;

	@ManyToOne
	@JoinColumn(name = "produtoId")
	private Produto produto;

	@ManyToOne
	@JoinColumn(name = "carrinhId")
	@JsonIgnore
	private Carrinho carrinho;

	public int getCarrinhoItemId() {
		return carrinhoItemId;
	}

	public void setCarrinhoItemId(int carrinhoItemId) {
		this.carrinhoItemId = carrinhoItemId;
	}

	public int getQualidade() {
		return qualidade;
	}

	public void setQualidade(int qualidade) {
		this.qualidade = qualidade;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public Carrinho getCarrinho() {
		return carrinho;
	}

	public void setCarrinho(Carrinho carrinho) {
		this.carrinho = carrinho;
	}
}
