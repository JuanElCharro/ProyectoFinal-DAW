/**
 * 
 */
package com.libreApp.main.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Juan
 *
 */

//- Es obligatorio el GeneratedValue en el ID, ya que al ser AutoIncremental 
//se necesita para que Spring inserte valores, en vez del usuario.

@Entity
@Table(name = "licencias")
public class LicenciasEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id_licencia")
	private Integer id_licencia;
	
	@Column(name = "nombre_licencia")
	private String nombre_licencia;
	
	@Column(name = "descripcion")
	private String descripcion;

	//Constructor vacío de Licencias
	public LicenciasEntity() {
		super();
	}

	/**
	 * Constructor completo de Licencias
	 * @param id_licencia
	 * @param nombre_licencia
	 * @param descripcion
	 */
	public LicenciasEntity(Integer id_licencia, String nombre_licencia, String descripcion) {
		super();
		this.id_licencia = id_licencia;
		this.nombre_licencia = nombre_licencia;
		this.descripcion = descripcion;
	}

	/**
	 * @return the id_licencia
	 */
	public Integer getId_licencia() {
		return id_licencia;
	}

	/**
	 * @param id_licencia the id_licencia to set
	 */
	public void setId_licencia(Integer id_licencia) {
		this.id_licencia = id_licencia;
	}

	/**
	 * @return the nombre_licencia
	 */
	public String getNombre_licencia() {
		return nombre_licencia;
	}

	/**
	 * @param nombre_licencia the nombre_licencia to set
	 */
	public void setNombre_licencia(String nombre_licencia) {
		this.nombre_licencia = nombre_licencia;
	}

	/**
	 * @return the descripcion
	 */
	public String getDescripcion() {
		return descripcion;
	}

	/**
	 * @param descripcion the descripcion to set
	 */
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	
}
