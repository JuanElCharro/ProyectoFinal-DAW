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
	@Query(value = "select new com.libreApp.main.dtos.AplicacionesDTO (a.id_app, a.nombre_app, a.version, a.fecha, a.link_imagen, a.link_descarga, a.descripcion, b.id_categoria) "
			+ "FROM com.libreApp.main.entities.AplicacionesEntity a JOIN com.libreApp.main.entities.CategoriasEntity b ON a.categorias.id_categoria = b.id_categoria "
			+ "WHERE (a.id_app LIKE CONCAT('%',:id_app,'%') or :id_app is null) "
			+ "AND a.nombre_app LIKE CONCAT ('%',:nombre_app,'%') "
			+ "AND a.version LIKE CONCAT ('%',:version,'%') "
			+ "AND a.fecha LIKE CONCAT ('%',:fecha,'%') "
			+ "AND a.link_imagen LIKE CONCAT ('%',:link_imagen,'%') "
			+ "AND a.link_descarga LIKE CONCAT ('%',:link_descarga,'%') "
			+ "AND a.descripcion LIKE CONCAT ('%',:descripcion,'%') "
			+ "AND (b.id_categoria LIKE CONCAT('%',:id_categoria,'%') or :id_categoria is null) ")
	List<AplicacionesDTO>buscarAplicacionPorNombreCategoriaLicenciaValoracion(
			@Param("id_app") Integer id_app,
			@Param("nombre_app") String nombre_app,
			@Param("version") String version,
			@Param("fecha") String fecha,
			@Param("link_imagen") String link_imagen,
			@Param("link_descarga") String link_descarga,
			@Param("descripcion") String descripcion,
			@Param("id_categoria") Integer id_categoria);

};
