package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.distribuida.entities.Departamento;

@Repository
public class DepartamentoDAOImpl implements DepartamentoDAO{
	
	
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
public List<Departamento> findAll(){
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT de FROM Departamento de", Departamento.class).getResultList();
		
	}
	
@Override
@Transactional
	public Departamento findOne(int id) {
		// TODO Auto-generated method stub
	Session session = sessionFactory.getCurrentSession();

//	Query query = session.createQuery("SELECT de FROM Departamento de WHERE de.idDepartamento =: keyIdDepartamento");
//	query.setParameter("keyIdDepartamento", id);
//		return (Departamento) query.getSingleResult();
	return session.get(Departamento.class, id);

	
	}
@Override
@Transactional
public void add(Departamento departamento) {
		// TODO Auto-generated method stub
	Session session = sessionFactory.getCurrentSession();
	session.saveOrUpdate(departamento);
	}

@Override
@Transactional
	public void up(Departamento departamento) {
		// TODO Auto-generated method stub
	Session session = sessionFactory.getCurrentSession();
@SuppressWarnings("rawtypes")
Query query = session.createQuery(" UPDATE Departamento de SET de.departamento=: keyDepartamento" + 
								"             ,de.descripcion =: keyDescripcion" +
								"               WHERE de.idDepartamento =: keyIdDepartamento");
query.setParameter("keyDepartamento", departamento.getDepartamento());
query.setParameter("keyDescripcion", departamento.getDescripcion());
query.setParameter("keyIdDepartamento", departamento.getIdDepartamento());

query.executeUpdate();
	}

	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
Session session = sessionFactory.getCurrentSession();
@SuppressWarnings("rawtypes")
Query query = session.createQuery("DELETE FROM Departamento de WHERE de.idDepartamento =: keyIdDepartamento");
query.setParameter("keyIdDepartamento", id);
query.executeUpdate();

}
	


}
