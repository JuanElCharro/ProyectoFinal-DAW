/**
 * 
 */
package com.libreApp.main.dtos;

/**
 * @author Juan
 *
 */
public class ComentariosDTO {
	private int id_comentario;
	private String comentario;
	
	/**
	 * @param id_comentario
	 * @param comentario
	 */
	public ComentariosDTO(int id_comentario, String comentario) {
		super();
		this.id_comentario = id_comentario;
		this.comentario = comentario;
	}

	/**
	 * @return the id_comentario
	 */
	public int getId_comentario() {
		return id_comentario;
	}

	/**
	 * @param id_comentario the id_comentario to set
	 */
	public void setId_comentario(int id_comentario) {
		this.id_comentario = id_comentario;
	}

	/**
	 * @return the comentario
	 */
	public String getComentario() {
		return comentario;
	}

	/**
	 * @param comentario the comentario to set
	 */
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	@Override
	public String toString() {
		return "ComentariosDTO [id_comentario=" + id_comentario + ", comentario=" + comentario + "]";
	}
	
	
}
