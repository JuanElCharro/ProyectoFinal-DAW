/**
 * 
 */
package com.libreApp.main.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Juan
 *
 */

@Entity
@Table(name = "aplicaciones")
public class AplicacionesEntity {
	
	@Id
	@Column(name = "nombreApp")
	private String nombreApp;
	
	@Column(name = "version")
	private String version;
	
	@Column(name = "fecha")
	private String fecha;
	
	@Column(name = "link_imagen")
	private String link_imagen;
	
	@Column(name = "link_descarga")
	private String link_descarga;
	
	@Column(name = "descripcion")
	private String descripcion;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name = "id_categoria")
	private CategoriasEntity categorias;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name = "id_licencia")
	private LicenciasEntity licencias;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	@JoinColumn(name = "id_valoracion")
	private ValoracionesEntity valoraciones;
	
	public AplicacionesEntity() {
		super();
	}

	/**
	 * @param nombreApp
	 * @param version
	 * @param fecha
	 * @param link_imagen
	 * @param link_descarga
	 * @param descripcion
	 */
	public AplicacionesEntity(String nombreApp, String version, String fecha, String link_imagen, String link_descarga,
			String descripcion) {
		super();
		this.nombreApp = nombreApp;
		this.version = version;
		this.fecha = fecha;
		this.link_imagen = link_imagen;
		this.link_descarga = link_descarga;
		this.descripcion = descripcion;
	}



	/**
	 * @param nombreApp
	 * @param version
	 * @param fecha
	 * @param link_imagen
	 * @param link_descarga
	 * @param descripcion
	 * @param categorias
	 * @param licencias
	 * @param valoraciones
	 */
	public AplicacionesEntity(String nombreApp, String version, String fecha, String link_imagen, String link_descarga,
			String descripcion, CategoriasEntity categorias, LicenciasEntity licencias,
			ValoracionesEntity valoraciones) {
		super();
		this.nombreApp = nombreApp;
		this.version = version;
		this.fecha = fecha;
		this.link_imagen = link_imagen;
		this.link_descarga = link_descarga;
		this.descripcion = descripcion;
		this.categorias = categorias;
		this.licencias = licencias;
		this.valoraciones = valoraciones;
	}

	/**
	 * @return the nombreApp
	 */
	public String getnombreApp() {
		return nombreApp;
	}

	/**
	 * @param nombreApp the nombreApp to set
	 */
	public void setnombreApp(String nombreApp) {
		this.nombreApp = nombreApp;
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
	 * @return the categorias
	 */
	public CategoriasEntity getCategorias() {
		return categorias;
	}

	/**
	 * @param categorias the categorias to set
	 */
	public void setCategorias(CategoriasEntity categorias) {
		this.categorias = categorias;
	}

	/**
	 * @return the licencias
	 */
	public LicenciasEntity getLicencias() {
		return licencias;
	}

	/**
	 * @param licencias the licencias to set
	 */
	public void setLicencias(LicenciasEntity licencias) {
		this.licencias = licencias;
	}

	/**
	 * @return the valoraciones
	 */
	public ValoracionesEntity getValoraciones() {
		return valoraciones;
	}

	/**
	 * @param valoraciones the valoraciones to set
	 */
	public void setValoraciones(ValoracionesEntity valoraciones) {
		this.valoraciones = valoraciones;
	}

	
}
