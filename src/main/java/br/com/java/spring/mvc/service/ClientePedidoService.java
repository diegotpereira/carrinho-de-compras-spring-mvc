package br.com.java.spring.mvc.service;

import br.com.java.spring.mvc.model.ClientePedido;

public interface ClientePedidoService {
	
	void addClientePedido(ClientePedido clientePedido);

	double getClientePedidoValorTotal(int carrinhoId);
}
