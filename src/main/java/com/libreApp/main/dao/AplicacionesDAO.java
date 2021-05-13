/**
 * 
 */
package com.libreApp.main.dao;

import java.util.List;

import com.libreApp.main.dtos.AplicacionesDTO;


/**
 * @author Juan
 *
 */

public interface AplicacionesDAO {
	List<AplicacionesDTO> obtenerAplicacionPorNombreCategoriaLicenciaValoracion(String nombreApp, String version, String fecha, String link_imagen, String link_descarga, String descripcion);
	Integer insertarAplicacion(String nombreApp, String version, String fecha, String link_imagen, String link_descarga, String descripcion, Integer id_categoria, Integer id_licencia, Integer id_valoracion);
	Integer eliminarAplicacion(String nombreApp);
}
