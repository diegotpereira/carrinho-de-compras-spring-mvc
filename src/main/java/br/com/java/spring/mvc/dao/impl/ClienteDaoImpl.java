package br.com.java.spring.mvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.java.spring.mvc.dao.ClienteDao;
import br.com.java.spring.mvc.model.Autoridades;
import br.com.java.spring.mvc.model.Cliente;

@Repository
public class ClienteDaoImpl implements ClienteDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		
		return sessionFactory;
	}
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addCliente(Cliente cliente) {
		// TODO Auto-generated method stub
		System.out.println("Adicionado cliente no dao");
		Session session = sessionFactory.openSession();
		cliente.getUsuarios().setAtivado(true);

		Autoridades autoridades = new Autoridades();
		autoridades.setAutoridades("FUNCAO_USUARIO");
		autoridades.setEmailId(cliente.getUsuarios().getEmailId());

		session.save(cliente);
		session.save(autoridades);
		session.flush();
		session.close();
		
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
