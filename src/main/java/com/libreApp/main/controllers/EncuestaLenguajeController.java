/**
 * 
 */
package com.libreApp.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.libreApp.main.dao.EncuestaLenguajeDAO;



/**
 * @author Juan
 *
 */

@Controller
public class EncuestaLenguajeController {
	
	@Autowired
	private EncuestaLenguajeDAO encuestaLenguajeDAO;
	
	@GetMapping(value = "insertarencuesta")
	public String formularioInsertarEncuestaLenguaje(ModelMap model) {
		
		return "vistas/inicio/bienvenido";		
	}
	
	@PostMapping(value = "insertarencuesta")
	public String InsertarAlumno(
			@RequestParam(value = "id", required = false) Integer id, 
			@RequestParam(value = "lenguaje") String lenguaje,
			@RequestParam(value = "descripcion", required = false) String descripcion, 
			ModelMap model){
		
		model.addAttribute("resultado", encuestaLenguajeDAO.insertarLenguaje(id, lenguaje, descripcion));
		
		return "vistas/inicio/bienvenido";
		
	}
}
