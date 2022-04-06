package br.com.java.spring.mvc.service;

import java.util.List;

import br.com.java.spring.mvc.model.*;

public interface UsuarioService {
	
	List<Usuario> getTodosUsuarios();

	void deletarUsuario(String usuarioId);

	void addUsuario(Usuario usuario);

	Usuario getUsuarioPorId(String usuarioId);
}
