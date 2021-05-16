/**
 * 
 */
package com.libreApp.main.dtos;

/**
 * @author Juan
 *
 */
public class CategoriasDTO {
	private int id_categoria;
	private String nombre_categoria;
	
	/**
	 * @param id_categoria
	 */
	public CategoriasDTO(int id_categoria) {
		super();
		this.id_categoria = id_categoria;
	}

	/**
	 * @param id_categoria
	 * @param nombre_categoria
	 */
	public CategoriasDTO(int id_categoria, String nombre_categoria) {
		super();
		this.id_categoria = id_categoria;
		this.nombre_categoria = nombre_categoria;
	}

	/**
	 * @return the id_categoria
	 */
	public int getId_categoria() {
		return id_categoria;
	}

	/**
	 * @param id_categoria the id_categoria to set
	 */
	public void setId_categoria(int id_categoria) {
		this.id_categoria = id_categoria;
	}

	/**
	 * @return the nombre_categoria
	 */
	public String getNombre_categoria() {
		return nombre_categoria;
	}

	/**
	 * @param nombre_categoria the nombre_categoria to set
	 */
	public void setNombre_categoria(String nombre_categoria) {
		this.nombre_categoria = nombre_categoria;
	}
	
	
}
