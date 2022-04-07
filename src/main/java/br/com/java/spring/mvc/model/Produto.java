package br.com.java.spring.mvc.model;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.constraints.*;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "item")
public class Produto implements Serializable{
	
	private static final long serialVersionUID = 5186013952828648626L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int produtoId;

	@Column(name = "categoria")
	private String produtoCategoria;

	@Column(name = "descricao")
	private String produtoDescricao;

	@Column(name = "fabricante")
	private String produtoFabricante;

	@NotEmpty(message = "Nome do Produto é obrigatório")
	@Column(name = "name")
	private String produtoNome;

	@NotNull(message = "Por favor, forneça algum preço")
	@Min(value = 100, message = "O valor mínimo deve ser maior que 100")
	@Column(name = "preco")
	private double produtoPreco;

	@Column(name = "unidade")
	private String unidadeEstoque;

	@Transient
	private MultipartFile produtoImagem;

	// Construtor
	public Produto(int produtoId, String produtoCategoria, String produtoDescricao, String produtoFabricante,
			String produtoNome, double produtoPreco, String unidadeEstoque) {
		this.produtoId = produtoId;
		this.produtoCategoria = produtoCategoria;
		this.produtoDescricao = produtoDescricao;
		this.produtoFabricante = produtoFabricante;
		this.produtoNome = produtoNome;
		this.produtoPreco = produtoPreco;
		this.unidadeEstoque = unidadeEstoque;
	}

	// Getters and Setters
	public int getProdutoId() {
		return produtoId;
	}

	public void setProdutoId(int produtoId) {
		this.produtoId = produtoId;
	}

	public String getProdutoCategoria() {
		return produtoCategoria;
	}

	public void setProdutoCategoria(String produtoCategoria) {
		this.produtoCategoria = produtoCategoria;
	}

	public String getProdutoDescricao() {
		return produtoDescricao;
	}

	public void setProdutoDescricao(String produtoDescricao) {
		this.produtoDescricao = produtoDescricao;
	}

	public String getProdutoFabricante() {
		return produtoFabricante;
	}

	public void setProdutoFabricante(String produtoFabricante) {
		this.produtoFabricante = produtoFabricante;
	}

	public String getProdutoNome() {
		return produtoNome;
	}

	public void setProdutoNome(String produtoNome) {
		this.produtoNome = produtoNome;
	}

	public double getProdutoPreco() {
		return produtoPreco;
	}

	public void setProdutoPreco(double produtoPreco) {
		this.produtoPreco = produtoPreco;
	}

	public String getUnidadeEstoque() {
		return unidadeEstoque;
	}

	public void setUnidadeEstoque(String unidadeEstoque) {
		this.unidadeEstoque = unidadeEstoque;
	}

	public MultipartFile getProdutoImagem() {
		return produtoImagem;
	}

	public void setProdutoImagem(MultipartFile produtoImagem) {
		this.produtoImagem = produtoImagem;
	}
}
