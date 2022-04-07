package br.com.java.spring.mvc.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.java.spring.mvc.dao.UsuarioDao;
import br.com.java.spring.mvc.model.Usuario;

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
	public List<Usuario> getTodosUsuarios() {
		Session session = sessionFactory.openSession();

		List<Usuario> usuarios = session.createCriteria(Usuario.class).list();

		System.out.println(usuarios);
		session.close();
		return usuarios;
	}

	@Override
	public void deletarUSuario(int usuarioId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.save(usuario);
		session.close();
		
	}

	@Override
	public Usuario getUsuarioPorId(int usuarioId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
