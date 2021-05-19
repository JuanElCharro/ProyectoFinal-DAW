/**
 * 
 */
package com.libreApp.main.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.libreApp.main.entities.ValoracionesEntity;

/**
 * @author Juan
 *
 */

@Repository
public interface ValoracionesRepository extends CrudRepository<ValoracionesEntity, Integer>{
	//El CrudRepository de Spring automatiza los accesos a esta interfaz, no es necesario código.
}
