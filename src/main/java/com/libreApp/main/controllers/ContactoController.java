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
public class ContactoController {
	
	@GetMapping(value = "contacto")
	public String getContacto(ModelMap model) {
		return "vistas/contacto/contacto";
	}
}
