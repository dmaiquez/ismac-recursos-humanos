package com.distribuida.dao;


import com.distribuida.entities.TipoContrato;

import java.util.List;


public interface TipoContratoDAO {

	public List<TipoContrato> findAll();
	
	public TipoContrato findOne(int id);
	
	public void add(TipoContrato TipoContrato);
	
	public void up(TipoContrato TipoContrato);

	public void del(int id);

}