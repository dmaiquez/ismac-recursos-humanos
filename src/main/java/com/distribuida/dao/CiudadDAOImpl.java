package com.distribuida.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.Ciudad;

@Repository
public class CiudadDAOImpl implements CiudadDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<Ciudad> findAll(){
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();		
		return session.createQuery("from Ciudad",Ciudad.class).getResultList();
		
	}
	
	@Override
	@Transactional
	public Ciudad findOne(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.getCurrentSession();
		return session.get(Ciudad.class,id);
	}

	@Override
	@Transactional
	public void add(Ciudad Ciudad) {
		// TODO Auto-generated method stub
	Session session=sessionFactory.getCurrentSession();	
	session.saveOrUpdate(Ciudad);
	
	}

	@Override
	@Transactional
	public void up(Ciudad Ciudad) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();	
		session.saveOrUpdate(Ciudad);
	}

	
	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	}

}