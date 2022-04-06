package br.com.java.spring.mvc.dao;

import java.util.List;

import br.com.java.spring.mvc.model.Cliente;

public interface ClienteDao {
	
	void addCliente(Cliente cliente);
	
	List<Cliente> getTodosClientes();
	
	Cliente getClientePorEmailId(String emailId);
}
