/**
 * 
 */
package com.libreApp.main.dtos;

/**
 * @author Juan
 *
 */
public class AplicacionesDTO {
	private String nombre_app;
	private String version;
	private String fecha;
	private String link_imagen;
	private String link_descarga;
	private String descripcion;
	private int id_categoria;
	private int id_licencia;
	private int id_valoracion;
	
	public AplicacionesDTO() {
		super();
	}

	/**
	 * @param nombre_app
	 * @param version
	 * @param fecha
	 * @param link_imagen
	 * @param link_descarga
	 * @param descripcion
	 */
	public AplicacionesDTO(String nombre_app, String version, String fecha, String link_imagen, String link_descarga,
			String descripcion) {
		super();
		this.nombre_app = nombre_app;
		this.version = version;
		this.fecha = fecha;
		this.link_imagen = link_imagen;
		this.link_descarga = link_descarga;
		this.descripcion = descripcion;
	}



	/**
	 * @param nombre_app
	 * @param version
	 * @param fecha
	 * @param link_imagen
	 * @param link_descarga
	 * @param descripcion
	 * @param id_categoria
	 * @param id_licencia
	 * @param id_valoracion
	 */
	public AplicacionesDTO(String nombre_app, String version, String fecha, String link_imagen, String link_descarga,
			String descripcion, int id_categoria, int id_licencia, int id_valoracion) {
		super();
		this.nombre_app = nombre_app;
		this.version = version;
		this.fecha = fecha;
		this.link_imagen = link_imagen;
		this.link_descarga = link_descarga;
		this.descripcion = descripcion;
		this.id_categoria = id_categoria;
		this.id_licencia = id_licencia;
		this.id_valoracion = id_valoracion;
	}

	/**
	 * @return the nombre_app
	 */
	public String getNombre_app() {
		return nombre_app;
	}

	/**
	 * @param nombre_app the nombre_app to set
	 */
	public void setNombre_app(String nombre_app) {
		this.nombre_app = nombre_app;
	}

	/**
	 * @return the version
	 */
	public String getVersion() {
		return version;
	}

	/**
	 * @param version the version to set
	 */
	public void setVersion(String version) {
		this.version = version;
	}

	/**
	 * @return the fecha
	 */
	public String getFecha() {
		return fecha;
	}

	/**
	 * @param fecha the fecha to set
	 */
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	/**
	 * @return the link_imagen
	 */
	public String getLink_imagen() {
		return link_imagen;
	}

	/**
	 * @param link_imagen the link_imagen to set
	 */
	public void setLink_imagen(String link_imagen) {
		this.link_imagen = link_imagen;
	}

	/**
	 * @return the link_descarga
	 */
	public String getLink_descarga() {
		return link_descarga;
	}

	/**
	 * @param link_descarga the link_descarga to set
	 */
	public void setLink_descarga(String link_descarga) {
		this.link_descarga = link_descarga;
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

	
}
