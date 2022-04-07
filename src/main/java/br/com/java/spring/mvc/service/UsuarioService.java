package br.com.java.spring.mvc.service;

import java.util.List;

import br.com.java.spring.mvc.model.*;

public interface UsuarioService {
	
	public List<Usuario> getTodosUsuarios();

	void deletarUsuario(int usuarioId);

	void addUsuario(Usuario usuario);

	Usuario getUsuarioPorId(int usuarioId);
}
