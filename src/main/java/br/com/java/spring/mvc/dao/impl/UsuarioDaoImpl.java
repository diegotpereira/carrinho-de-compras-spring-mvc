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

	@Override
	public List<Usuario> getTodosUsuarios() {
		// TODO Auto-generated method stub
		return null;
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
