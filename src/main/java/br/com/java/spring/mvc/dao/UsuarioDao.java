package br.com.java.spring.mvc.dao;

import java.util.List;

import br.com.java.spring.mvc.model.*;

public interface UsuarioDao {
	
	List<Usuario> getTodosUsuarios();

	void deletarUSuario(String usuarioId);

	void addUsuario(Usuario usuario);

	Usuario getUsuarioPorId(String usuarioId);
}
