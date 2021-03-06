/**
 * 
 */
package com.libreApp.main.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.libreApp.main.entities.LicenciasEntity;

/**
 * @author Juan
 *
 */

@Repository
public interface LicenciasRepository extends CrudRepository<LicenciasEntity, Integer>{
	//El CrudRepository de Spring automatiza los accesos a esta interfaz, no es necesario código.
}
