package com.distribuida.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.TipoContrato;

@Repository
public class TipoContratoDAOImpl implements TipoContratoDAO {
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	@Transactional
	public List<TipoContrato> findAll(){
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();		
		return session.createQuery("from TipoContrato",TipoContrato.class).getResultList();
		
	}
	
	@Override
	@Transactional
	public TipoContrato findOne(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.getCurrentSession();
		return session.get(TipoContrato.class,id);
	}

	@Override
	@Transactional
	public void add(TipoContrato TipoContrato) {
		// TODO Auto-generated method stub
	Session session=sessionFactory.getCurrentSession();	
	session.saveOrUpdate(TipoContrato);
	
	}

	@Override
	@Transactional
	public void up(TipoContrato TipoContrato) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();	
		session.saveOrUpdate(TipoContrato);
	}

	
	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	}

}