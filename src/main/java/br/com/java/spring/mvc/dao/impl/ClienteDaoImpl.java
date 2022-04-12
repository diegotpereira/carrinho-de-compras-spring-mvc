package br.com.java.spring.mvc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.java.spring.mvc.dao.ClienteDao;
import br.com.java.spring.mvc.model.Autoridades;
import br.com.java.spring.mvc.model.Cliente;
import br.com.java.spring.mvc.model.Usuario;

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
		Session session = sessionFactory.openSession();
		List<Cliente> clienteLista = session.createQuery("from Cliente").list();

		return clienteLista;
	}

	@Override
	public Cliente getClientePorEmailId(String emailId) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Usuario where emailId =?");
		query.setString(0, emailId);

		Usuario usuarios = (Usuario)query.uniqueResult();
		Cliente cliente = usuarios.getCliente();

		return cliente;
	}

}
