package br.com.java.spring.mvc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.java.spring.mvc.dao.ConsultasDao;
import br.com.java.spring.mvc.model.Consultas;
import br.com.java.spring.mvc.service.ConsultasService;

@Service
public class ConsultasServiceImpl implements ConsultasService{

	@Autowired
	private ConsultasDao consultasDao;

	@Override
	public void addConsulta(Consultas consultas) {
		consultasDao.addConsulta(consultas);
	}
}
