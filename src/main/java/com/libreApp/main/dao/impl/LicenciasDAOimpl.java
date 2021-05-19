/**
 * 
 */
package com.libreApp.main.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.libreApp.main.dao.LicenciasDAO;
import com.libreApp.main.entities.LicenciasEntity;
import com.libreApp.main.repositorios.LicenciasRepository;

/**
 * @author Juan
 *
 */

@Service
public class LicenciasDAOimpl implements LicenciasDAO{
	
	@Autowired
	private LicenciasRepository licenciasRepository;

	@Override
	public Integer insertarLicencia(Integer id_licencia, String nombre_licencia, String descripcion) {
		//Creamos un objeto tipo Licencia de la entidad Licencias con los campos recibidos
		LicenciasEntity categ = new LicenciasEntity(id_licencia, nombre_licencia, descripcion);

		//Guardamos el objeto
		licenciasRepository.save(categ);

		return 1;
	}

}
