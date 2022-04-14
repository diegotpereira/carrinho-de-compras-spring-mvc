package br.com.java.spring.mvc.dao;

import java.util.List;

import br.com.java.spring.mvc.model.*;

public interface UsuarioDao {
	
	List<User> getTodosUsuarios();

	void deletarUSuario(int usuarioId);

	void addUsuario(User usuario);

	User getUsuarioPorId(int usuarioId);
}
