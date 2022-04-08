package br.com.java.spring.mvc.dao.impl;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.java.spring.mvc.dao.CarrinhoDao;
import br.com.java.spring.mvc.model.Carrinho;
import br.com.java.spring.mvc.service.ClientePedidoService;

@Repository
@Transactional
public class CarrinhoDaoImpl implements CarrinhoDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private ClientePedidoService clientePedidoService;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Carrinho getCarrinhoPorCarrinhoId(int carrinhoId) {
		Session session = sessionFactory.openSession();
		Carrinho carrinho = (Carrinho) session.get(Carrinho.class, carrinhoId);

		System.out.println(carrinho);

		session.close();

		return carrinho;
	}

	@Override
	public Carrinho validar(int carrinhoId) throws IOException {
		Carrinho carrinho = getCarrinhoPorCarrinhoId(carrinhoId);

		if (carrinho == null || carrinho.getCarrinhoItem().size() == 0) {
			throw new IOException(carrinhoId + "");
		}
		atualizar(carrinho);
		return carrinho;
	}

	@Override
	public void atualizar(Carrinho carrinho) {
		
		int carrinhoId = carrinho.getCarrinhoId();

		double valorTotal = clientePedidoService.getClientePedidoValorTotal(carrinhoId);
		carrinho.setPrecoTotal(valorTotal);
		
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(carrinho);
		session.flush();
		session.close();	
	}
}
