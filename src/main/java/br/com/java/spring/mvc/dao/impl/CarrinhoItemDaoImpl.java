package br.com.java.spring.mvc.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.java.spring.mvc.dao.CarrinhoItemDao;
import br.com.java.spring.mvc.model.Carrinho;
import br.com.java.spring.mvc.model.CarrinhoItem;

@Repository
@Transactional
public class CarrinhoItemDaoImpl implements CarrinhoItemDao{

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public void addCarrinhoItem(CarrinhoItem carrinhoItem) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(carrinhoItem);
		session.flush();
		session.close();
		
	}

	@Override
	public void removerCarrinhoItem(int carrinhoItemId) {
		Session session = sessionFactory.openSession();

		CarrinhoItem carrinhoItem = (CarrinhoItem) session.get(CarrinhoItem.class, carrinhoItemId);
		session.delete(carrinhoItem);

		Carrinho carrinho = carrinhoItem.getCarrinho();
		List<CarrinhoItem> carrinhoItens = carrinho.getCarrinhoItem();
		carrinhoItens.remove(carrinhoItem);
		session.flush();
		session.close();
		
	}

	@Override
	public void removerTodosItensCarrinho(Carrinho carrinho) {
		List<CarrinhoItem> carrinhoItens = carrinho.getCarrinhoItem();

		for(CarrinhoItem carrinhoItem : carrinhoItens){
			removerCarrinhoItem(carrinhoItem.getCarrinhoItemId());
		}
		
	}
}
