package br.com.java.spring.mvc.service;

import java.util.List;

import br.com.java.spring.mvc.model.Produto;

public interface ProdutoService {
	
	public List<Produto> getTodosProdutos();

	Produto getProdutoPorId(int produtoId);

	void deletarProduto(int produtoId);

	void addProduto(Produto produto);

	void editarProduto(Produto produto);
}
