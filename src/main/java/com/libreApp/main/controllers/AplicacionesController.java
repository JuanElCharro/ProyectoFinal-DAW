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

import com.libreApp.main.dao.AplicacionesDAO;
import com.libreApp.main.dao.CombosDAO;


/**
 * @author Juan
 *
 */

@Controller
public class AplicacionesController {
	
	@Autowired
	private AplicacionesDAO appImpl;
	
	@Autowired
	private CombosDAO combosDao;
	
	//Insertar-Crear entrada de Programa
	
	@GetMapping(value = "crearPrograma")
	public String mostrarCrearPrograma(ModelMap model) {
		model.addAttribute("listaCategorias", combosDao.comboCategorias());
		model.addAttribute("listaLicencias", combosDao.comboLicencias());
		model.addAttribute("listaValoraciones", combosDao.comboValoraciones());
		return "vistas/programas/crearPrograma";
	}
	
	@PostMapping(value = "crearPrograma")
	public String crearPrograma(
			@RequestParam(value = "nombre_app", required = false) String nombre_app,
			@RequestParam(value = "version", required = false) String version,
			@RequestParam(value = "fecha", required = false) String fecha,
			@RequestParam(value = "link_imagen", required = false) String link_imagen,
			@RequestParam(value = "link_descarga", required = false) String link_descarga,
			@RequestParam(value = "descripcion", required = false) String descripcion,
			@RequestParam(value = "categorias") Integer id_categoria,
			@RequestParam(value = "licencias") Integer id_licencia,
			@RequestParam(value = "valoraciones") Integer id_valoracion,
		ModelMap model) {
		
		model.addAttribute("resultado", appImpl.insertarAplicacion(nombre_app, version, fecha, link_imagen, link_descarga, descripcion, id_categoria, id_licencia, id_valoracion));
		model.addAttribute("listaCategorias", combosDao.comboCategorias());
		model.addAttribute("listaLicencias", combosDao.comboLicencias());
		model.addAttribute("listaValoraciones", combosDao.comboValoraciones());
		
		return "vistas/programas/crearPrograma";
	}
	
	//Buscar Programa
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