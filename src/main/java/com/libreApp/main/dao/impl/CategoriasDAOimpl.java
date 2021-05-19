/**
 * 
 */
package com.libreApp.main.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.libreApp.main.dao.CategoriasDAO;
import com.libreApp.main.entities.CategoriasEntity;
import com.libreApp.main.repositorios.CategoriasRepository;

/**
 * @author Juan
 *
 */

@Service
public class CategoriasDAOimpl implements CategoriasDAO{

	@Autowired
	private CategoriasRepository categoriasRepository;

	@Override
	public Integer insertarCategoria(Integer id_categoria, String nombre_categoria) {
		//Creamos un objeto de tipo categoría
		CategoriasEntity categ = new CategoriasEntity(id_categoria, nombre_categoria);

		//Guardamos el objeto
		categoriasRepository.save(categ);

		return 1;
	}

}
