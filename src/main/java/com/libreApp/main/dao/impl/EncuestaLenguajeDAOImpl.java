/**
 * 
 */
package com.libreApp.main.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.libreApp.main.dao.EncuestaLenguajeDAO;
import com.libreApp.main.entities.EncuestaLenguajeEntity;
import com.libreApp.main.repositorios.EncuestaLenguajeRepository;

/**
 * @author Juan
 *
 */

@Service
public class EncuestaLenguajeDAOImpl implements EncuestaLenguajeDAO{
	
	@Autowired
	private EncuestaLenguajeRepository encuestaLenguajeRepository;

	@Override
	public Integer insertarLenguaje(Integer id, String lenguaje, String descripcion) {		
		EncuestaLenguajeEntity encuesta = new EncuestaLenguajeEntity(id, lenguaje, descripcion);		
		encuestaLenguajeRepository.save(encuesta);
		
		return 1;  
	}
	
}
