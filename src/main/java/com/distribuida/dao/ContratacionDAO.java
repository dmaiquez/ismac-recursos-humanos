package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.Contratacion;

public interface ContratacionDAO {
	
	 
		public List<Contratacion>findAll();
		
		public Contratacion findOne(int id);
		public void add(Contratacion contratacion);
		public void up (Contratacion contratacion);
		public void del(int id);


	

}
