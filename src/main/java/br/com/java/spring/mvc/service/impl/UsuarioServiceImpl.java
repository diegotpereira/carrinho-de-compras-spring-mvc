package br.com.java.spring.mvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;

import br.com.java.spring.mvc.dao.UsuarioDao;
import br.com.java.spring.mvc.model.Usuario;
import br.com.java.spring.mvc.service.*;

import org.springframework.transaction.annotation.Transactional;

@Service
public class UsuarioServiceImpl implements UsuarioService{

	@Autowired
	private UsuarioDao usuarioDao;

	@Transactional
	public void addUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		usuarioDao.addUsuario(usuario);
		
	}

	@Override
	public void deletarUsuario(String usuarioId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Usuario> getTodosUsuarios() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usuario getUsuarioPorId(String usuarioId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
