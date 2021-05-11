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
	List<AplicacionesDTO> obtenerAplicacionPorNombreCategoriaLicenciaValoracion(String nombre_app, String version, String fecha, String link_imagen, String link_descarga, String descripcion, Integer id_categoria, Integer id_licencia, Integer id_valoracion);
	Integer insertarAplicacion(String nombre_app, String version, String fecha, String link_imagen, String link_descarga, String descripcion, Integer id_categoria, Integer id_licencia, Integer id_valoracion);
	Integer actualizarAplicacion(String nombre_app, String version, String fecha, String link_imagen, String link_descarga, String descripcion, Integer id_categoria, Integer id_licencia, Integer id_valoracion);
	Integer eliminarAplicacion(String nombre_app);
}
