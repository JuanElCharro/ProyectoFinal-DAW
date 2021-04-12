/**
 * 
 */
package com.libreApp.main.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.libreApp.main.entities.EncuestaLenguajeEntity;

/**
 * @author Juan
 *
 */

@Repository
public interface EncuestaLenguajeRepository extends CrudRepository<EncuestaLenguajeEntity, Integer>{
	
}
