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

import com.libreApp.main.dao.CategoriasDAO;
import com.libreApp.main.dao.CombosDAO;

/**
 * @author Juan
 *
 */

@Controller
public class CategoriasController {
	@Autowired
	private CategoriasDAO categoriasImpl;
	
	@Autowired
	private CombosDAO combosDao;
	
	//Crear Categoría
	
	@GetMapping(value = "crearCategorias")
	public String mostrarCrearCategoria(ModelMap model) {
		return "vistas/categorias/crearCategoria";
	}
	
	@PostMapping(value = "crearCategorias")
	public String crearCategoria(
			@RequestParam(value = "id_categoria", required = false) Integer id_categoria,
			@RequestParam(value = "nombre_categoria", required = false) String nombre_categoria,
		ModelMap model) {
		
		model.addAttribute("resultado", categoriasImpl.insertarCategoria(id_categoria, nombre_categoria));
		
		return "vistas/categorias/crearCategoria";
	}
	
	//Mostrar Categorias
	
	@GetMapping(value = "mostrarCategoria")
	public String mostrarFormularioEliminarCategoria(ModelMap model) {
		model.addAttribute("listaCategorias", combosDao.comboCategorias());
		return "vistas/categorias/mostrarCategoria";
	}
}
