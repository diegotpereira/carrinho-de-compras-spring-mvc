package br.com.java.spring.mvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.java.spring.mvc.dao.ClientePedidoDao;
import br.com.java.spring.mvc.model.ClientePedido;
import br.com.java.spring.mvc.service.CarrinhoService;
import br.com.java.spring.mvc.service.ClientePedidoService;

@Service
public class ClientePedidoServiceImpl implements ClientePedidoService{

	@Autowired
	private ClientePedidoDao clientePedidoDao;

	@Autowired
	private CarrinhoService carrinhoService;

	@Override
	public void addClientePedido(ClientePedido clientePedido) {

		
	}

	@Override
	public double getClientePedidoValorTotal(int carrinhoId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
