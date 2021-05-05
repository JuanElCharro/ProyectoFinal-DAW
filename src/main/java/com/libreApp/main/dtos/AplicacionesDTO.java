/**
 * 
 */
package com.libreApp.main.dtos;

/**
 * @author Juan
 *
 */
public class AplicacionesDTO {
	private int id_app;
	private String nombre_app;
	private String version;
	private String fecha;
	private String link_imagen;
	private String link_descarga;
	private String descripcion;
	private int id_categoria;
	private int id_licencia;
	private int id_comentario;
	
	/**
	 * @param id_app
	 * @param nombre_app
	 * @param version
	 * @param fecha
	 * @param link_imagen
	 * @param link_descarga
	 * @param descripcion
	 * @param id_categoria
	 * @param id_licencia
	 * @param id_comentario
	 */
	public AplicacionesDTO(int id_app, String nombre_app, String version, String fecha, String link_imagen,
			String link_descarga, String descripcion, int id_categoria, int id_licencia, int id_comentario) {
		super();
		this.id_app = id_app;
		this.nombre_app = nombre_app;
		this.version = version;
		this.fecha = fecha;
		this.link_imagen = link_imagen;
		this.link_descarga = link_descarga;
		this.descripcion = descripcion;
		this.id_categoria = id_categoria;
		this.id_licencia = id_licencia;
		this.id_comentario = id_comentario;
	}

	/**
	 * @return the id_app
	 */
	public int getId_app() {
		return id_app;
	}

	/**
	 * @param id_app the id_app to set
	 */
	public void setId_app(int id_app) {
		this.id_app = id_app;
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

	@Override
	public String toString() {
		return "ProgramaDTO [id_app=" + id_app + ", nombre_app=" + nombre_app + ", version=" + version + ", fecha="
				+ fecha + ", link_imagen=" + link_imagen + ", link_descarga=" + link_descarga + ", descripcion="
				+ descripcion + ", id_categoria=" + id_categoria + ", id_licencia=" + id_licencia + ", id_comentario="
				+ id_comentario + "]";
	}
	
	
}