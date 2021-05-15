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
import com.libreApp.main.entities.ValoracionesEntity;
import com.libreApp.main.repositorios.AplicacionesRepository;
import com.libreApp.main.repositorios.CategoriasRepository;
import com.libreApp.main.repositorios.ValoracionesRepository;
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
	private ValoracionesRepository valoracionesRepository;
	
	@Autowired
	private LicenciasRepository licenciasRepository;
	
	@Override
	public List<AplicacionesDTO> obtenerAplicacionPorNombreCategoriaLicenciaValoracion(Integer id_app, String nombre_app,
			String version, String fecha, String link_imagen, String link_descarga, String descripcion) {
		return aplicacionesRepository.buscarAplicacionPorNombreCategoriaLicenciaValoracion(id_app, nombre_app, version, fecha, link_imagen, link_descarga, descripcion);
	}
	
	@Override
	public Integer insertarAplicacion(Integer id_app, String nombre_app, String version, String fecha, String link_imagen,
			String link_descarga, String descripcion, Integer id_categoria, Integer id_licencia, Integer id_valoracion) {
		
		if (fecha == "") {
			Date cDate = new Date();
		    fecha = new SimpleDateFormat("yyyy-MM-dd").format(cDate);
		}
		
		//Objetos Optional, para recoger en el ID de Categorías y Licencias
		Optional<CategoriasEntity> a = categoriasRepository.findById(id_categoria);
		CategoriasEntity categoria = a.get();
		
		Optional<LicenciasEntity> b = licenciasRepository.findById(id_licencia);
		LicenciasEntity licencia = b.get();
		
		Optional<ValoracionesEntity> c = valoracionesRepository.findById(id_valoracion);
		ValoracionesEntity valoracion = c.get();
		
		//Creamos el objeto Aplicación con los valores insertados
		AplicacionesEntity aplicacion = new AplicacionesEntity(id_app, nombre_app, version, fecha, link_imagen, link_descarga, descripcion, categoria, licencia, valoracion);
		
		//Guardamos el objeto
		aplicacionesRepository.save(aplicacion);
		
		return 1;
	}

	@Override
	public Integer eliminarAplicacion(Integer nombre_app) {
		aplicacionesRepository.deleteById(nombre_app);
		return 1;
	}
	
}
