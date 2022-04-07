package br.com.java.spring.mvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.java.spring.mvc.dao.ProdutoDao;
import br.com.java.spring.mvc.model.Produto;
import br.com.java.spring.mvc.service.ProdutoService;

@Service(value="produtoService")
public class ProdutoServiceImpl implements ProdutoService{

	@Autowired
	private ProdutoDao produtoDao;

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
		produtoDao.addProduto(produto);
		
	}

	@Override
	public void editarProduto(Produto produto) {
		// TODO Auto-generated method stub
		
	}
	
}
