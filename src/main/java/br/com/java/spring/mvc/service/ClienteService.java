package br.com.java.spring.mvc.service;

import java.util.List;

import br.com.java.spring.mvc.model.Cliente;

public interface ClienteService {
	
	void addCliente(Cliente cliente);
	
	List<Cliente> getTodosClientes();
	
	Cliente getClientePorEmailId(String emailId);

}
