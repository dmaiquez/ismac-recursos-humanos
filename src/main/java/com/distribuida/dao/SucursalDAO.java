package com.distribuida.dao;


import com.distribuida.entities.Sucursal;

import java.util.List;


public interface SucursalDAO {

	public List<Sucursal> findAll();
	
	public Sucursal findOne(int id);
	
	public void add(Sucursal Sucursal);
	
	public void up(Sucursal Sucursal);

	public void del(int id);

}