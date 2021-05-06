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

@Entity
@Table(name = "comentarios")
public class ComentariosEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_comentario")
	private Integer id_comentario;
	
	@Column(name = "comentario")
	private String comentario;

	/**
	 * @param id_comentario
	 * @param comentario
	 */
	public ComentariosEntity(Integer id_comentario, String comentario) {
		super();
		this.id_comentario = id_comentario;
		this.comentario = comentario;
	}

	/**
	 * @return the id_comentario
	 */
	public Integer getId_comentario() {
		return id_comentario;
	}

	/**
	 * @param id_comentario the id_comentario to set
	 */
	public void setId_comentario(Integer id_comentario) {
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
	
	
}
