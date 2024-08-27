package com.distribuida.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "vacacion")
public class Vacacion {
	
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	@Column(name="id_vacacion")
	private int id_vacacion;
	
//	@Column(name="id_empleado")
//	private int id_empleado;
	@JoinColumn(name="id_empleado")
	@ManyToOne(cascade = { CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private Empleado empleado;

	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name="fecha_inicio_vacacion")
	private java.sql.Date fecha_inicio_vacacion;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name="fecha_fin_vacacion")
	private java.sql.Date fecha_fin_vacacion;
	@Column(name="total_dias_vacacion")
	private int total_dias_vacacion;
	@Column(name="vacacion_aprobado")
	private String vacacion_aprobado;
	
	//inyeccion de dependencia de cliente a factura
	
	public Vacacion () {}
	
	public Vacacion(int id_vacacion, Empleado empleado, java.sql.Date fecha_inicio_vacacion, java.sql.Date fecha_fin_vacacion,
			int total_dias_vacacion, String vacacion_aprobado) {
		
		this.id_vacacion = id_vacacion;
		this.empleado = empleado;
		this.fecha_inicio_vacacion = fecha_inicio_vacacion;
		this.fecha_fin_vacacion = fecha_fin_vacacion;
		this.total_dias_vacacion = total_dias_vacacion;
		this.vacacion_aprobado = vacacion_aprobado;
	}


	public int getId_vacacion() {
		return id_vacacion;
	}


	public void setId_vacacion(int id_vacacion) {
		this.id_vacacion = id_vacacion;
	}


	public Empleado getEmpleado() {
		return empleado;
	}


	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}


	public Date getFecha_inicio_vacacion() {
		return fecha_inicio_vacacion;
	}


	public void setFecha_inicio_vacacion(java.sql.Date fecha_inicio_vacacion) {
		this.fecha_inicio_vacacion = fecha_inicio_vacacion;
	}


	public Date getFecha_fin_vacacion() {
		return fecha_fin_vacacion;
	}


	public void setFecha_fin_vacacion(java.sql.Date fecha_fin_vacacion) {
		this.fecha_fin_vacacion = fecha_fin_vacacion;
	}


	public int getTotal_dias_vacacion() {
		return total_dias_vacacion;
	}


	public void setTotal_dias_vacacion(int total_dias_vacacion) {
		this.total_dias_vacacion = total_dias_vacacion;
	}


	public String getVacacion_aprobado() {
		return vacacion_aprobado;
	}


	public void setVacacion_aprobado(String vacacion_aprobado) {
		this.vacacion_aprobado = vacacion_aprobado;
	}


	
	@Override
	public String toString() {
		return "Vacacion [id_vacacion=" + id_vacacion + ", empleado=" + empleado + ", fecha_inicio_vacacion="
				+ fecha_inicio_vacacion + ", fecha_fin_vacacion=" + fecha_fin_vacacion + ", total_dias_vacacion="
				+ total_dias_vacacion + ", vacacion_aprobado=" + vacacion_aprobado + "]";
	}
	
	
	
	
}
