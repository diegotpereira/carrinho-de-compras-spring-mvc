package br.com.java.spring.mvc.dao;

import java.io.IOException;

import br.com.java.spring.mvc.model.Carrinho;

public interface CarrinhoDao {
	
	Carrinho getCarrinhoPorCarrinhoId(int carrinhoId);

	Carrinho validar(int carrinhoId) throws IOException;

	void atualizar(Carrinho carrinho);
}
