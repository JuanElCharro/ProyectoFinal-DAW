/**
 * 
 */
package com.libreApp.main.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.libreApp.main.entities.CategoriasEntity;

/**
 * @author Juan
 *
 */

@Repository
public interface CategoriasRepository extends CrudRepository<CategoriasEntity, Integer>{
	//El CrudRepository de Spring automatiza los accesos a esta interfaz, no es necesario código.
}
