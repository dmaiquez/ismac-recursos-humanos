package com.distribuida.dao;

import java.util.List;
import com.distribuida.entities.Canton;


public interface CantonDAO {

	public List<Canton> findAll();
	
	public Canton findOne(int id);
	
	public void add(Canton Canton);
	
	public void up(Canton Canton);

	public void del(int id);

}