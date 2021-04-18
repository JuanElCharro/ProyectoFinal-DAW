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
@Table(name = "usuarios")
public class UsuarioEntity {
	@Id
	@Column(name = "id_usuarios")
	private int id_usuarios;

	@Column(name = "nombre")
	private String nombre;

	@Column(name = "password")
	private String password;

	@Column(name = "administrador")
	private int administrador;
	

	/**
	 * @param id_usuarios
	 * @param nombre
	 * @param password
	 * @param administrador
	 */
	public UsuarioEntity(int id_usuarios, String nombre, String password, int administrador) {
		super();
		this.id_usuarios = id_usuarios;
		this.nombre = nombre;
		this.password = password;
		this.administrador = administrador;
	}

	/**
	 * @return the id_usuarios
	 */
	public int getId_usuarios() {
		return id_usuarios;
	}

	/**
	 * @param id_usuarios the id_usuarios to set
	 */
	public void setId_usuarios(int id_usuarios) {
		this.id_usuarios = id_usuarios;
	}

	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the administrador
	 */
	public int getAdministrador() {
		return administrador;
	}

	/**
	 * @param administrador the administrador to set
	 */
	public void setAdministrador(int administrador) {
		this.administrador = administrador;
	}

	
}
