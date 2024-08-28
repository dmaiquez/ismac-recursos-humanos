package com.distribuida.dao;

import java.util.List;
import com.distribuida.entities.Ciudad;


public interface CiudadDAO {

	public List<Ciudad> findAll();
	
	public Ciudad findOne(int id);
	
	public void add(Ciudad Ciudad);
	
	public void up(Ciudad Ciudad);

	public void del(int id);

}