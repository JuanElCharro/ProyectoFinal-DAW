/**
 * 
 */
package com.libreApp.main.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.libreApp.main.entities.AplicacionesEntity;

/**
 * @author Juan
 *
 */

@Repository
public interface AplicacionesRepository extends CrudRepository<AplicacionesEntity, Integer>{
	
}
