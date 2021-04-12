/**
 * 
 */
package com.libreApp.main.dtos;

/**
 * @author Juan
 *
 */

public class EncuestaLenguajeDTO {
	private int id;
	private String lenguaje;
	private String descripcion;
	
	/**
	 * @param id
	 * @param lenguaje
	 * @param descripcion
	 */
	public EncuestaLenguajeDTO(int id, String lenguaje, String descripcion) {
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

	@Override
	public String toString() {
		return "EncuestaLenguajeDTO [id=" + id + ", lenguaje=" + lenguaje + ", descripcion=" + descripcion + "]";
	}
	
}
