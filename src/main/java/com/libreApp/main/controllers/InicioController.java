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
public class InicioController {
	
	@GetMapping(value = "inicio")
	public String getInicio(ModelMap model) {
		return "vistas/inicio/inicio";
	}
}
