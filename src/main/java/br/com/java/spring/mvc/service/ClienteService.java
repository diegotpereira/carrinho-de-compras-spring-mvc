package br.com.java.spring.mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import br.com.java.spring.mvc.model.Cliente;

@Service
public interface ClienteService {
	
	void addCliente(Cliente cliente);
	
	List<Cliente> getTodosClientes();
	
	Cliente getClientePorId(String emailId);

}
