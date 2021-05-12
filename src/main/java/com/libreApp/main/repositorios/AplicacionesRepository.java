/**
 * 
 */
package com.libreApp.main.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.libreApp.main.dtos.AplicacionesDTO;
import com.libreApp.main.entities.AplicacionesEntity;

/**
 * @author Juan
 *
 */

@Repository
public interface AplicacionesRepository extends CrudRepository<AplicacionesEntity, Integer>{
	@Query(value = "select new com.libreApp.main.dtos.AplicacionesDTO (a.nombre_app, a.version, a.fecha, a.link_imagen, a.link_descarga, a.descripcion) "
			+ "FROM com.libreApp.main.entities.AplicacionesEntity a "
			+ "WHERE a.nombre_app LIKE CONCAT ('%',:nombre_app,'%') "
			+ "AND a.version LIKE CONCAT ('%',:version,'%') "
			+ "AND a.fecha LIKE CONCAT ('%',:fecha,'%') "
			+ "AND a.link_imagen LIKE CONCAT ('%',:link_imagen,'%') "
			+ "AND a.link_descarga LIKE CONCAT ('%',:link_descarga,'%') "
			+ "AND a.descripcion LIKE CONCAT ('%',:descripcion,'%') ")
			  List<AplicacionesDTO>buscarAplicacionPorNombreCategoriaLicenciaValoracion(
					  @Param("nombre_app") String nombre_app,
					  @Param("version") String version,
					  @Param("fecha") String fecha,
					  @Param("link_imagen") String link_imagen,
					  @Param("link_descarga") String link_descarga,
					  @Param("descripcion") String descripcion);
	
	@Query(value = "DELETE com.libreApp.main.dtos.AplicacionesDTO (a.nombre_app) "
			+ "FROM com.libreApp.main.entities.AplicacionesEntity a"
			+ "WHERE a.nombre_app LIKE CONCAT ('%',:nombre_app,'%') ")
			  List<AplicacionesDTO>eliminarAppPorId(
					  @Param("nombre_app") String nombre_app);
}
