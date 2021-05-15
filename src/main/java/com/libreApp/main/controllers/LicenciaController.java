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

import com.libreApp.main.dao.CombosDAO;
import com.libreApp.main.dao.LicenciasDAO;

/**
 * @author Juan
 *
 */

@Controller
public class LicenciaController {
	@Autowired
	private LicenciasDAO licenciasImpl;
	
	@Autowired
	private CombosDAO combosDao;
	
	//Crear Categoría
	
	@GetMapping(value = "crearLicencias")
	public String mostrarCrearCategoria(ModelMap model) {
		return "vistas/licencias/crearLicencia";
	}
	
	@PostMapping(value = "crearLicencias")
	public String crearCategoria(
			@RequestParam(value = "id_licencia", required = false) Integer id_licencia,
			@RequestParam(value = "nombre_licencia", required = false) String nombre_licencia,
			@RequestParam(value = "descripcion", required = false) String descripcion,
		ModelMap model) {
		
		model.addAttribute("resultado", licenciasImpl.insertarLicencia(id_licencia, nombre_licencia, descripcion));
		
		return "vistas/licencias/crearLicencia";
	}
	
	//Mostrar Categorias
	
	@GetMapping(value = "mostrarLicencia")
	public String mostrarFormularioEliminarCategoria(ModelMap model) {
		model.addAttribute("listaLicencias", combosDao.comboLicencias());
		return "vistas/licencias/mostrarLicencia";
	}
}
