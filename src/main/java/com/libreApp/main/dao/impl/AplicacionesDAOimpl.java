/**
 * 
 */
package com.libreApp.main.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.libreApp.main.dao.AplicacionesDAO;
import com.libreApp.main.dtos.AplicacionesDTO;
import com.libreApp.main.entities.AplicacionesEntity;
import com.libreApp.main.entities.CategoriasEntity;
import com.libreApp.main.entities.LicenciasEntity;
import com.libreApp.main.repositorios.AplicacionesRepository;
import com.libreApp.main.repositorios.CategoriasRepository;
import com.libreApp.main.repositorios.ComentariosRepository;
import com.libreApp.main.repositorios.LicenciasRepository;

/**
 * @author Juan
 *
 */

@Service
public class AplicacionesDAOimpl implements AplicacionesDAO {
	
	@Autowired
	private AplicacionesRepository aplicacionesRepository;
	
	@Autowired
	private CategoriasRepository categoriasRepository;
	
	@Autowired
	private ComentariosRepository comentariosRepository;
	
	@Autowired
	private LicenciasRepository licenciasRepository;

	@Override
	public List<AplicacionesDTO> obtenerAplicacionPorIdNombre(Integer id_app, String nombre_app) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer insertarAplicacion(int id_app, String nombre_app, String version, String fecha, String link_imagen,
			String link_descarga, String descripcion, int id_categoria, int id_licencia) {
		
		if (fecha == "") {
			Date cDate = new Date();
		    fecha = new SimpleDateFormat("yyyy-MM-dd").format(cDate);
		}
		
		//Objetos Optional, para recoger en el ID de Categorías y Licencias
		Optional<CategoriasEntity> a = categoriasRepository.findById(id_categoria);
		CategoriasEntity categoria = a.get();
		
		Optional<LicenciasEntity> b = licenciasRepository.findById(id_categoria);
		LicenciasEntity licencia = b.get();
		
		//Creamos el objeto Aplicación con los valores insertados
		AplicacionesEntity aplicacion = new AplicacionesEntity(id_app, nombre_app, version, fecha, link_imagen, link_descarga, descripcion, categoria, licencia);
		
		//Guardamos el objeto
		aplicacionesRepository.save(aplicacion);
		
		return 1;
	}

	@Override
	public Integer actualizarAplicacion(int id_app, String nombre_app, String version, String fecha, String link_imagen,
			String link_descarga, String descripcion, int id_categoria, int id_licencia) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer eliminarAplicacion(Integer id_app) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
