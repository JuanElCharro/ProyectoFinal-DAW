/**
 * 
 */
package com.libreApp.main.dtos;

/**
 * @author Juan
 *
 */
public class CombosDTO {
	private int id;
	private String descripcion;
	
	/**
	 * @param id
	 * @param descripcion
	 */
	public CombosDTO(int id, String descripcion) {
		super();
		this.id = id;
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
