package com.distribuida.dao;

import java.util.List;
import com.distribuida.entities.Provincia;


public interface ProvinciaDAO {

	public List<Provincia> findAll();
	
	public Provincia findOne(int id);
	
	public void add(Provincia Provincia);
	
	public void up(Provincia Provincia);

	public void del(int id);

}