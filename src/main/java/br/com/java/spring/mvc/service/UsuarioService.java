package br.com.java.spring.mvc.service;

import java.util.List;

import br.com.java.spring.mvc.model.*;

public interface UsuarioService {
	
	public List<User> getTodosUsuarios();

	void deletarUsuario(int usuarioId);

	void addUsuario(User usuario);

	User getUsuarioPorId(int usuarioId);
}
