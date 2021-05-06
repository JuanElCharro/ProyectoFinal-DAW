/**
 * 
 */
package com.libreApp.main.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author Juan
 *
 */

@Controller
public class ProgramaController {
	
	@GetMapping(value = "crearPrograma")
	public String mostrarCrearPrograma(ModelMap model) {
		return "vistas/programas/crearPrograma";
	}
	
	@GetMapping(value = "buscarPrograma")
	public String mostrarBuscarPrograma(ModelMap model) {
		return "vistas/programas/buscarPrograma";
	}
	
	@GetMapping(value = "actualizarPrograma")
	public String mostrarActualizarPrograma(ModelMap model) {
		return "vistas/programas/actualizarPrograma";
	}
	
	@GetMapping(value = "eliminarPrograma")
	public String mostrarEliminarPrograma(ModelMap model) {
		return "vistas/programas/eliminarPrograma";
	}
}
