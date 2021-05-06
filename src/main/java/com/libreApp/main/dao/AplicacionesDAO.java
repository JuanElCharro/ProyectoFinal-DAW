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
	List<AplicacionesDTO> obtenerAplicacionPorIdNombre(Integer id_app, String nombre_app);
	Integer insertarAplicacion(int id_app, String nombre_app, String version, String fecha, String link_imagen, String link_descarga, String descripcion, int id_categoria, int id_licencia);
	Integer actualizarAplicacion(int id_app, String nombre_app, String version, String fecha, String link_imagen, String link_descarga, String descripcion, int id_categoria, int id_licencia);
	Integer eliminarAplicacion(Integer id_app);
}
