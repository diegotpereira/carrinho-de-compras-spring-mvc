package br.com.java.spring.mvc.dao;

import java.util.List;

import br.com.java.spring.mvc.model.Produto;

public interface ProdutoDao {
	
	List<Produto> getTodosProdutos();

	Produto getProdutoPorId(int produtoId);

	void deletarProduto(int produtoId);

	void addProduto(Produto produto);

	void editarProduto(Produto produto);
}
