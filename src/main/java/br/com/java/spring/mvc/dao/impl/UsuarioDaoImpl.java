package br.com.java.spring.mvc.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.java.spring.mvc.dao.UsuarioDao;
import br.com.java.spring.mvc.model.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

@Repository
public class UsuarioDaoImpl implements UsuarioDao{

	@Autowired
	private SessionFactory sessionFactory;

	// isso criará uma sessionFactory para esta classe
	// existe apenas uma sessionFactory que deve ser criada para as aplicações
	// podemos criar várias sessões para uma sessionFactory
	// cada sessão pode fazer algumas funções
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<User> getTodosUsuarios() {
		Session session = sessionFactory.openSession();

		List<User> usuarios = session.createCriteria(User.class).list();

		System.out.println(usuarios);
		session.close();
		return usuarios;
	}

	@Override
	public void deletarUSuario(int usuarioId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addUsuario(User usuario) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(usuario);
		session.close();
		
	}

	@Override
	public User getUsuarioPorId(int usuarioId) {
		// Lendo os registros da tabela
		Session session = sessionFactory.openSession();

		
		// selecione * do produto onde isbn=i
		// se chamarmos o método get,Record não existe ele retornará null
		// se chamarmos load, se o registro não existir ele lançará uma exceção
		User usuario = (User) session.get(User.class, usuarioId);
		session.close();

		return usuario;
	}
}
