/**
 * 
 */
package com.libreApp.main.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.libreApp.main.dao.AplicacionesDAO;
import com.libreApp.main.dao.CombosDAO;

/**
 * @author Juan
 *
 */

@Controller
public class CategoriasController {
	@Autowired
	private AplicacionesDAO appImpl;
	
	@Autowired
	private CombosDAO combosDao;
	
	@GetMapping(value = "crearCategorias")
	public String mostrarCrearPrograma(ModelMap model) {
		model.addAttribute("listaCategorias", combosDao.comboCategorias());
		return "vistas/categorias/crearCategoria";
	}
}
