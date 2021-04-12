/**
 * 
 */
package com.libreApp.main.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Juan
 *
 */

@Entity
@Table(name = "encuesta_lenguaje")
public class EncuestaLenguajeEntity {
	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "lenguaje")
	private String lenguaje;
	
	@Column(name = "descripcion")
	private String descripcion;

	/**
	 * @param id
	 * @param lenguaje
	 * @param descripcion
	 */
	public EncuestaLenguajeEntity(int id, String lenguaje, String descripcion) {
		super();
		this.id = id;
		this.lenguaje = lenguaje;
		this.descripcion = descripcion;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the lenguaje
	 */
	public String getLenguaje() {
		return lenguaje;
	}

	/**
	 * @param lenguaje the lenguaje to set
	 */
	public void setLenguaje(String lenguaje) {
		this.lenguaje = lenguaje;
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
