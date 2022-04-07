package br.com.java.spring.mvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.java.spring.mvc.dao.CarrinhoDao;
import br.com.java.spring.mvc.model.Carrinho;
import br.com.java.spring.mvc.service.CarrinhoService;

@Service
public class CarrinhoServiceImpl implements CarrinhoService{

	@Autowired
	private CarrinhoDao carrinhoDao;

	public CarrinhoDao getCarrinhoDao() {
		return carrinhoDao;
	}

	public void setCarrinhoDao(CarrinhoDao carrinhoDao) {
		this.carrinhoDao = carrinhoDao;
	}

	@Override
	public Carrinho getCarrinhoPorCarrinhoId(int carrinhoId) {
		
		return carrinhoDao.getCarrinhoPorCarrinhoId(carrinhoId);
	}
	
}
