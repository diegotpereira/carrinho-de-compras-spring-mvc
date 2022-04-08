package br.com.java.spring.mvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.java.spring.mvc.dao.ClienteDao;
import br.com.java.spring.mvc.model.Cliente;
import br.com.java.spring.mvc.service.ClienteService;

@Service
public class ClienteServiceImpl implements ClienteService{

	@Autowired
	private ClienteDao clienteDao;

	@Transactional
	public void addCliente(Cliente cliente) {
		// TODO Auto-generated method stub
		clienteDao.addCliente(cliente);

		
	}

	@Override
	public List<Cliente> getTodosClientes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cliente getClientePorEmailId(String emailId) {
		// TODO Auto-generated method stub
		return null;
	}

}
