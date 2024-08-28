package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.Contratacion;

@Repository
public class ContratacionDAOImpl implements ContratacionDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
public List<Contratacion> findAll(){
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("SELECT co FROM Contratacion co", Contratacion.class).getResultList();
		
	}
	
@Override
@Transactional
	public Contratacion findOne(int id) {
		// TODO coto-generated method stub
	Session session = sessionFactory.getCurrentSession();
	@SuppressWarnings("rawtypes")
	Query query = session.createQuery("SELECT co FROM Contratacion co WHERE co.idContratacion =: keyIdContratacion");
	query.setParameter("keyIdContratacion", id);
		return (Contratacion) query.getSingleResult();
	}
@Override
@Transactional
public void add(Contratacion contratacion) {
		// TODO coto-generated method stub
	Session session = sessionFactory.getCurrentSession();
	session.saveOrUpdate(contratacion);
	}

@Override
@Transactional
	public void up(Contratacion contratacion) {
		// TODO coto-generated method stub
	Session session = sessionFactory.getCurrentSession();

@SuppressWarnings("rawtypes")
Query query = session.createQuery(" UPDATE Contratacion co SET co.idCiudad =: keyIdCiudad" + 
								"            , co.idDepartamento =: keyIdDepartamento"+ 
								"             ,co.vacanteFecha=: keyVacanteFecha" + 
								"               ,co.vacantePuesto =: keyVacantePuesto" + 
								"               ,co.vacanteDescripcion=: keyVacanteDescripcion" + 
								"                ,co.vacanteModalidad =: keyVacanteModalidad" + 
								"                ,co.vacanteTiempo =: keyVacanteTiempo" + 
								"                ,co.vacanteNivel =: keyVacanteNivel" + 
								"                ,co.vacanteNumero =: keyVacanteNumero" + 
								"                ,co.vacanteSueldoEstimado =: keyVacanteSueldoEstimado" + 
								"               WHERE co.idContratacion =: keyIdContratacion");
query.setParameter("keyIdCiudad", contratacion.getCiudad().getIdCiudad());
query.setParameter("keyIdDepartamento", contratacion.getDepartamento().getIdDepartamento());
query.setParameter("keyVacanteFecha", contratacion.getVacanteFecha());
query.setParameter("keyVacantePuesto", contratacion.getVacantePuesto());
query.setParameter("keyVacanteDescripcion", contratacion.getVacanteDescripcion());
query.setParameter("keyVacanteModalidad", contratacion.getVacanteModalidad());
query.setParameter("keyVacanteTiempo", contratacion.getVacanteTiempo());
query.setParameter("keyVacanteNivel", contratacion.getVacanteNivel());
query.setParameter("keyVacanteNumero", contratacion.getVacanteNumero());
query.setParameter("keyVacanteSueldoEstimado", contratacion.getVacanteSueldoEstimado());
query.setParameter("keyIdContratacion", contratacion.getIdContratacion());

query.executeUpdate();
	}

	@SuppressWarnings("rawtypes")
	@Override
	@Transactional
	public void del(int id) {
		// TODO coto-generated method stub
Session session = sessionFactory.getCurrentSession();

Query query = session.createQuery("DELETE FROM Contratacion co WHERE co.idContratacion =: keyIdContratacion");
query.setParameter("keyIdContratacion", id);
query.executeUpdate();

}

}
