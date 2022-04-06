package br.com.java.spring.mvc.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.java.spring.mvc.dao.UsuarioDao;
import br.com.java.spring.mvc.model.Usuario;

@Repository
public class UsuarioDaoImpl implements UsuarioDao{

	@Override
	public List<Usuario> getTodosUsuarios() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletarUSuario(String usuarioId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addUsuario(Usuario usuario) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Usuario getUsuarioPorId(String usuarioId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
