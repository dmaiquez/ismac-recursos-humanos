package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.ContratacionDAO;
import com.distribuida.entities.Contratacion;


@Controller
@RequestMapping("/contrataciones") //son las URL Path Principal
public class ContratacionController {

	@Autowired
	private ContratacionDAO contratacionDAO;
	
	// Path Secundario
	@GetMapping("/findAll") 
	public String findALL(Model model){
		
		//try {
List<Contratacion> contrataciones = contratacionDAO.findAll();
		
		model.addAttribute("keyContrataciones", contrataciones);
		 // Nombre del Formulario Web EJ: Contrataciones-listar o "Contratacions-listar.html" 
		return "contrataciones-listar"; 
	
	//	} catch (Exception e) {
			// TODO: handle exception
		//}
	}
	
	@GetMapping("/findOne")    // findOne se suele utilizar para actualizar o borrar un dato de un formulario
	public String findOne(@RequestParam("idContratacion")@Nullable Integer idContratacion
			,@RequestParam("opcion")@Nullable Integer opcion
			,Model model
			) {
		
		//try{
			if(idContratacion !=null) {
				Contratacion contratacion = contratacionDAO.findOne(idContratacion);
				model.addAttribute("contratacion", contratacion);
			}
			// formulario  web Contratacions add se usa para agregar o actualizar. 
			if(opcion ==  1) return "contrataciones-add" ;
			else return "contrataciones-del";
	//} catch (Exception e){
		
	//}
	}
		
	@PostMapping ("/add")
	public String add(@RequestParam("idContratacion")@Nullable Integer idContratacion 
			,@RequestParam("idCiudad")@Nullable Integer idCiudad
			,@RequestParam("idDepartamento")@Nullable Integer idDepartamento
			,@RequestParam("vacanteFecha")@Nullable  @DateTimeFormat(pattern="yyyy-MM-dd") Date vacanteFecha
			,@RequestParam("vacantePuesto")@Nullable String vacantePuesto
			,@RequestParam("vacanteDescripcion")@Nullable String vacanteDescripcion
			,@RequestParam("vacanteModalidad")@Nullable String vacanteModalidad
			,@RequestParam("vacanteTiempo")@Nullable String vacanteTiempo
			,@RequestParam("vacanteNivel")@Nullable String vacanteNivel
			,@RequestParam("vacanteNumero")@Nullable Integer vacanteNumero
			,@RequestParam("vacanteSueldoEstimado")@Nullable Double vacanteSueldoEstimado
			, Model model
			
			){
//try {
		if(idContratacion == null){
			Contratacion contratacion = new Contratacion(0,idCiudad,idDepartamento,vacanteFecha,vacantePuesto,vacanteDescripcion,vacanteModalidad
					,vacanteTiempo,vacanteNivel,vacanteNumero,vacanteSueldoEstimado);
			contratacionDAO.add(contratacion); 
			
		}else {
			Contratacion contratacion = new Contratacion(idContratacion,idCiudad,idDepartamento,vacanteFecha,vacantePuesto,vacanteDescripcion,vacanteModalidad
					,vacanteTiempo,vacanteNivel,vacanteNumero,vacanteSueldoEstimado);
			contratacionDAO.up(contratacion);
			
		}
		
	return "redirect:/contrataciones/findAll";
	// catch (Exception e) {
			// TODO: handle exception
	// }
		
		
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idContratacion")@Nullable Integer idContratacion) {
//try {
			contratacionDAO.del(idContratacion);
			return "redirect:/contrataciones/findAll";
//} catch (Exception e) {
			// TODO: handle exception
	//e.printStackTrace();
//}
		
	}
	
	
}
