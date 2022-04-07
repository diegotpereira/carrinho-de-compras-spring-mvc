package br.com.java.spring.mvc.dao;

import br.com.java.spring.mvc.model.Carrinho;
import br.com.java.spring.mvc.model.CarrinhoItem;

public interface CarrinhoItemDao {
	
	void addCarrinhoItem(CarrinhoItem carrinhoItem);

	void removerCarrinhoItem(int carrinhoItemId);

	void removerTodosItensCarrinho(Carrinho carrinho);
}
