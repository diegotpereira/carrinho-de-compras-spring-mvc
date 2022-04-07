package br.com.java.spring.mvc.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.java.spring.mvc.dao.ClientePedidoDao;
import br.com.java.spring.mvc.model.ClientePedido;

@Repository
public class ClientePedidoImpl implements ClientePedidoDao{

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addClientePedido(ClientePedido clientepedido) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(clientepedido);
		session.flush();
		session.close();
	}
}
