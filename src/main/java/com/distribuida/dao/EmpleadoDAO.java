package com.distribuida.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.distribuida.entities.Empleado;


@Repository
public interface EmpleadoDAO {
	
	public List<Empleado> findAll();
	
		public Empleado findOne(int id);
		
		public void add(Empleado empleado);
		
		public void up(Empleado empleado);
	 
		public void del(int id);
		
		//CRUD avanzado
		
	}

