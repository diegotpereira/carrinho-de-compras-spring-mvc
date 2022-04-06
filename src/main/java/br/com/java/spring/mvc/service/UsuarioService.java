package br.com.java.spring.mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import br.com.java.spring.mvc.model.*;

@Service
public interface UsuarioService {
	
	List<Usuario> getTodosUsuarios();

	void deletarUsuario(String usuarioId);

	void addUsuario(Usuario usuario);

	Usuario getUsuarioPorId(String usuarioId);
}
