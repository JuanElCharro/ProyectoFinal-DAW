/**
 * 
 */
package com.libreApp.main.dtos;

/**
 * @author Juan
 *
 */
public class ValoracionesDTO {
	private int id_valoracion;
	private String valores;

	//Constructor vacío de valoraciones
	public ValoracionesDTO() {
		super();
	}

	/**
	 * Constructor completo de valoraciones
	 * @param id_valoracion
	 * @param valores
	 */
	public ValoracionesDTO(int id_valoracion, String valores) {
		super();
		this.id_valoracion = id_valoracion;
		this.valores = valores;
	}

	/**
	 * @return the id_valoracion
	 */
	public int getId_valoracion() {
		return id_valoracion;
	}

	/**
	 * @param id_valoracion the id_valoracion to set
	 */
	public void setId_valoracion(int id_valoracion) {
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
