package com.distribuida.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.Sucursal;

@Repository
public class SucursalDAOImpl implements SucursalDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<Sucursal> findAll(){
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();		
		return session.createQuery("from Sucursal",Sucursal.class).getResultList();
		
	}
	
	@Override
	@Transactional
	public Sucursal findOne(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.getCurrentSession();
		return session.get(Sucursal.class,id);
	}

	@Override
	@Transactional
	public void add(Sucursal Sucursal) {
		// TODO Auto-generated method stub
	Session session=sessionFactory.getCurrentSession();	
	session.saveOrUpdate(Sucursal);
	
	}

	@Override
	@Transactional
	public void up(Sucursal Sucursal) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();	
		session.saveOrUpdate(Sucursal);
	}

	
	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	}

}