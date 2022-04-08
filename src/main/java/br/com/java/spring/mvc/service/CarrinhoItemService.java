package br.com.java.spring.mvc.service;

import br.com.java.spring.mvc.model.Carrinho;
import br.com.java.spring.mvc.model.CarrinhoItem;

public interface CarrinhoItemService {
	
	void addCarrinhoItem(CarrinhoItem carrinhoItem);

	void removerCarrinhoItem(int carrinhoItemId);

	void removerTodosItensCarrino(Carrinho carrinho);
}
