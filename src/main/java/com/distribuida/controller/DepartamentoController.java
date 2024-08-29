package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.distribuida.dao.DepartamentoDAO;
import com.distribuida.entities.Departamento;


@Controller
@RequestMapping("/departamentos") //son las URL Path Principal
public class DepartamentoController {
	
	@Autowired
	private DepartamentoDAO departamentoDAO;
	
	// Path Secundario
	@GetMapping("/findAll") 
	public String findALL(Model model){
		
		//try {
List<Departamento> departamentos = departamentoDAO.findAll();
		
		model.addAttribute("keyDepartamento", departamentos);
		 // Nombre del Formulario Web EJ: departamentos-listar o "departamentos-listar.html" 
		return "departamentos-listar"; 
	
	//	} catch (Exception e) {
			// TODO: handle exception
		//}
	}
	
	@GetMapping("/findOne")    // findOne se suele utilizar para actualizar o borrar un dato de un formulario
	public String findOne(@RequestParam("idDepartamento")@Nullable Integer idDepartamento
			,@RequestParam("opcion")@Nullable Integer opcion
			,Model model
			) {
		
		//try{
			if(idDepartamento !=null) {
				Departamento departamento = departamentoDAO.findOne(idDepartamento);
				model.addAttribute("departamento", departamento);
			}
			// formulario  web departamentos add se usa para agregar o actualizar. 
			if(opcion ==  1) return "departamentos-add" ;
			else return "departamentos-del";
	//} catch (Exception e){
		
	//}
	}
		
	@PostMapping ("/add")
	public String add(@RequestParam("idDepartamento")@Nullable Integer idDepartamento
			,@RequestParam("departamento")@Nullable String departamento
			,@RequestParam("descripcion")@Nullable String descripcion
			
			, Model model
			
			){
//try {
		if(idDepartamento == null){
			Departamento departamento2 = new Departamento(0,departamento,descripcion);
			departamentoDAO.add(departamento2);
			
		}else {
			Departamento departamento2= new Departamento(idDepartamento,departamento,descripcion);
			departamentoDAO.up(departamento2);
			
		}
		
	return "redirect:/departamentos/findAll";
	// catch (Exception e) {
			// TODO: handle exception
	// }
		
		
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idDepartamento")@Nullable Integer idDepartamento) {
//try {
			departamentoDAO.del(idDepartamento);
			return "redirect:/departamentos/findAll";
//} catch (Exception e) {
			// TODO: handle exception
	//e.printStackTrace();
//}
		
	}

}
