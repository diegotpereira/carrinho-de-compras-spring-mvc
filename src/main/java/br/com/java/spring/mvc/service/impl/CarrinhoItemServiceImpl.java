package br.com.java.spring.mvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.java.spring.mvc.dao.CarrinhoItemDao;
import br.com.java.spring.mvc.model.Carrinho;
import br.com.java.spring.mvc.model.CarrinhoItem;
import br.com.java.spring.mvc.service.CarrinhoItemService;

@Service
public class CarrinhoItemServiceImpl implements CarrinhoItemService{

	@Autowired
	private CarrinhoItemDao carrinhoItemDao;

	public CarrinhoItemDao getCarrinhoItemDao() {
		return carrinhoItemDao;
	}

	public void setCarrinhoItemDao(CarrinhoItemDao carrinhoItemDao) {
		this.carrinhoItemDao = carrinhoItemDao;
	}

	@Override
	public void addCarrinhoItem(CarrinhoItem carrinhoItem) {
		carrinhoItemDao.addCarrinhoItem(carrinhoItem);
		
	}

	@Override
	public void removerCarrinhoItem(int carrinhoItemId) {
		carrinhoItemDao.removerCarrinhoItem(carrinhoItemId);
		
	}

	@Override
	public void removerTodosItensCarrino(Carrinho carrinho) {
		carrinhoItemDao.removerTodosItensCarrinho(carrinho);
		
	}
	
}
