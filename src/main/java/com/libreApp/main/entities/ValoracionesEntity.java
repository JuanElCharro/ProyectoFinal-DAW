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
@Table(name = "valoraciones")
public class ValoracionesEntity {
	
	@Id
	@Column(name = "id_valoracion")
	private Integer id_valoracion;
	
	@Column(name = "valores")
	private String valores;

	public ValoracionesEntity() {
		super();
	}

	/**
	 * @param id_valoracion
	 * @param valores
	 */
	public ValoracionesEntity(Integer id_valoracion, String valores) {
		super();
		this.id_valoracion = id_valoracion;
		this.valores = valores;
	}

	/**
	 * @return the id_valoracion
	 */
	public Integer getId_valoracion() {
		return id_valoracion;
	}

	/**
	 * @param id_valoracion the id_valoracion to set
	 */
	public void setId_valoracion(Integer id_valoracion) {
		this.id_valoracion = id_valoracion;
	}

	/**
	 * @return the valores
	 */
	public String getValores() {
		return valores;
	}

	/**
	 * @param valores the valores to set
	 */
	public void setValores(String valores) {
		this.valores = valores;
	}

	
}
