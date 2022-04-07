package br.com.java.spring.mvc.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.java.spring.mvc.dao.ConsultasDao;
import br.com.java.spring.mvc.model.Consultas;

@Repository
public class ConsultasDaoImpl implements ConsultasDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addConsulta(Consultas consultas) {
		
		Session session = sessionFactory.openSession();
		session.save(consultas);
		session.close();
	}
}
