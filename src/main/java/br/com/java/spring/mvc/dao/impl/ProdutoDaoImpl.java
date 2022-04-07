package br.com.java.spring.mvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.java.spring.mvc.dao.ProdutoDao;
import br.com.java.spring.mvc.model.Produto;

@Repository(value = "produtoDao")
public class ProdutoDaoImpl implements ProdutoDao{

	// esta classe está conectada com a sessionFactory para fazer alguma operação no
    // base de dados
	@Autowired
	private SessionFactory sessionFactory;

	// isso criará uma sessionFactory para esta classe
	// existe apenas uma sessionFactory que deve ser criada para as aplicações
	// podemos criar várias sessões para uma sessionFactory
	// cada sessão pode fazer algumas funções
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Produto> getTodosProdutos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Produto getProdutoPorId(int produtoId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletarProduto(int produtoId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addProduto(Produto produto) {
		Session session = sessionFactory.openSession();
		session.save(produto);
		session.close();
		
	}

	@Override
	public void editarProduto(Produto produto) {
		// TODO Auto-generated method stub
		
	}
	

}
