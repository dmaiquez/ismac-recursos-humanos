package com.distribuida.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.Provincia;

@Repository
public class ProvinciaDAOImpl implements ProvinciaDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<Provincia> findAll(){
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();		
		return session.createQuery("from Provincia",Provincia.class).getResultList();
		
	}
	
	@Override
	@Transactional
	public Provincia findOne(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.getCurrentSession();
		return session.get(Provincia.class,id);
	}

	@Override
	@Transactional
	public void add(Provincia Provincia) {
		// TODO Auto-generated method stub
	Session session=sessionFactory.getCurrentSession();	
	session.saveOrUpdate(Provincia);
	
	}

	@Override
	@Transactional
	public void up(Provincia Provincia) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();	
		session.saveOrUpdate(Provincia);
	}

	
	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	}

}