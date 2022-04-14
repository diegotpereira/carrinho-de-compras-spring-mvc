package br.com.java.spring.mvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;

import br.com.java.spring.mvc.dao.UsuarioDao;
import br.com.java.spring.mvc.model.*;
import br.com.java.spring.mvc.service.*;

import org.springframework.transaction.annotation.Transactional;

@Service
public class UsuarioServiceImpl implements UsuarioService{

	@Autowired
	private UsuarioDao usuarioDao;

	@Transactional
	public void addUsuario(User usuario) {
		// TODO Auto-generated method stub
		usuarioDao.addUsuario(usuario);
		
	}

	@Override
	public void deletarUsuario(int usuarioId) {
		// TODO Auto-generated method stub
		
	}

	@Transactional
	public List<User> getTodosUsuarios() {
		
		return usuarioDao.getTodosUsuarios();
	}

	@Override
	public User getUsuarioPorId(int usuarioId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
