package com.distribuida.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.Canton;

@Repository
public class CantonDAOImpl implements CantonDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<Canton> findAll(){
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();		
		return session.createQuery("from Canton",Canton.class).getResultList();
		
	}
	
	@Override
	@Transactional
	public Canton findOne(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.getCurrentSession();
		return session.get(Canton.class,id);
	}

	@Override
	@Transactional
	public void add(Canton Canton) {
		// TODO Auto-generated method stub
	Session session=sessionFactory.getCurrentSession();	
	session.saveOrUpdate(Canton);
	
	}

	@Override
	@Transactional
	public void up(Canton Canton) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();	
		session.saveOrUpdate(Canton);
	}

	
	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	}

}