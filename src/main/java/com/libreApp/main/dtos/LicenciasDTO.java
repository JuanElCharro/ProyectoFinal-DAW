/**
 * 
 */
package com.libreApp.main.dtos;

/**
 * @author Juan
 *
 */
public class LicenciasDTO {
	private int id_licencia;
	private String nombre_licencia;
	private String descripcion;
	
	/**
	 * Constructor completo de Licencia
	 * @param id_licencia
	 * @param nombre_licencia
	 * @param descripcion
	 */
	public LicenciasDTO(int id_licencia, String nombre_licencia, String descripcion) {
		super();
		this.id_licencia = id_licencia;
		this.nombre_licencia = nombre_licencia;
		this.descripcion = descripcion;
	}

	/**
	 * @return the id_licencia
	 */
	public int getId_licencia() {
		return id_licencia;
	}

	/**
	 * @param id_licencia the id_licencia to set
	 */
	public void setId_licencia(int id_licencia) {
		this.id_licencia = id_licencia;
	}

	/**
	 * @return the nombre_licencia
	 */
	public String getNombre_licencia() {
		return nombre_licencia;
	}

	/**
	 * @param nombre_licencia the nombre_licencia to set
	 */
	public void setNombre_licencia(String nombre_licencia) {
		this.nombre_licencia = nombre_licencia;
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
		return "LicenciasDTO [id_licencia=" + id_licencia + ", nombre_licencia=" + nombre_licencia + ", descripcion="
				+ descripcion + "]";
	}
	
	
}
