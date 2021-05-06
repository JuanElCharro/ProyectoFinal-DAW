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
@Table(name = "categorias")
public class CategoriasEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_categoria")
	private Integer id_categoria;
	
	@Column(name = "nombre_categoria")
	private String nombre_categoria;
	

	public CategoriasEntity() {
		super();
	}

	/**
	 * @param id_categoria
	 * @param nombre_categoria
	 */
	public CategoriasEntity(Integer id_categoria, String nombre_categoria) {
		super();
		this.id_categoria = id_categoria;
		this.nombre_categoria = nombre_categoria;
	}

	/**
	 * @return the id_categoria
	 */
	public Integer getId_categoria() {
		return id_categoria;
	}

	/**
	 * @param id_categoria the id_categoria to set
	 */
	public void setId_categoria(Integer id_categoria) {
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
