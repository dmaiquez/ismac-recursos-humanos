package com.distribuida.entities;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "Pagos")
public class Pagos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pago") 
    private int id_pago; 
    
    
//    @Column(name = "id_empleado") 
//    private int id_empleado; 
	@JoinColumn(name = "id_empleado")
    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE,CascadeType.PERSIST, CascadeType.REFRESH})
	private Empleado empleado;
    
//    @Column(name = "id_forma_pago") 
//    private int id_forma_pago; 
	@JoinColumn(name = "id_forma_pago")
    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE,CascadeType.PERSIST, CascadeType.REFRESH})
	private Formapago formaPago;
    
    @Column(name = "aplica_iva") 
    private String aplica_iva; 
    @Column(name = "monto_pago") 
    private  double monto_pago; 
    @Column(name = "monto_iva") 
    private double monto_iva; 
    @Column(name = "monto_descuento") 
    private double monto_descuento; 
    @Column(name = "monto_extras") 
    private double monto_extras; 
    @Column(name = "monto_pago_total") 
    private double monto_pago_total; 
    
    
    public Pagos() {}


	public Pagos(int id_pago, Empleado empleado, Formapago forma_pago, String aplica_iva, double monto_pago,
			double monto_iva, double monto_descuento, double monto_extras, double monto_pago_total) {
		
		this.id_pago = id_pago;
		this.empleado = empleado;
		this.formaPago = forma_pago;
		this.aplica_iva = aplica_iva;
		this.monto_pago = monto_pago;
		this.monto_iva = monto_iva;
		this.monto_descuento = monto_descuento;
		this.monto_extras = monto_extras;
		this.monto_pago_total = monto_pago_total;
	}


	public int getId_pago() {
		return id_pago;
	}


	public void setId_pago(int id_pago) {
		this.id_pago = id_pago;
	}


	public Empleado getEmpleado() {
		return empleado;
	}


	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}


	public Formapago getFormaPago() {
		return formaPago;
	}


	public void setFormaPago(Formapago formaPago) {
		this.formaPago = formaPago;
	}


	public String getAplica_iva() {
		return aplica_iva;
	}


	public void setAplica_iva(String aplica_iva) {
		this.aplica_iva = aplica_iva;
	}


	public double getMonto_pago() {
		return monto_pago;
	}


	public void setMonto_pago(double monto_pago) {
		this.monto_pago = monto_pago;
	}


	public double getMonto_iva() {
		return monto_iva;
	}


	public void setMonto_iva(double monto_iva) {
		this.monto_iva = monto_iva;
	}


	public double getMonto_descuento() {
		return monto_descuento;
	}


	public void setMonto_descuento(double monto_descuento) {
		this.monto_descuento = monto_descuento;
	}


	public double getMonto_extras() {
		return monto_extras;
	}


	public void setMonto_extras(double monto_extras) {
		this.monto_extras = monto_extras;
	}


	public double getMonto_pago_total() {
		return monto_pago_total;
	}


	public void setMonto_pago_total(double monto_pago_total) {
		this.monto_pago_total = monto_pago_total;
	}


	
	@Override
	public String toString() {
		return "Pagos [id_pago=" + id_pago + ", empleado=" + empleado + ", formaPago=" + formaPago + ", aplica_iva="
				+ aplica_iva + ", monto_pago=" + monto_pago + ", monto_iva=" + monto_iva + ", monto_descuento="
				+ monto_descuento + ", monto_extras=" + monto_extras + ", monto_pago_total=" + monto_pago_total + "]";
	}


}
