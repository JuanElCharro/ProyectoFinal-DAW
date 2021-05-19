/**
 * 
 */
package com.libreApp.main.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Juan
 *
 */

/* 
   - Es obligatorio el GeneratedValue en el ID, ya que al ser AutoIncremental 
   se necesita para que Spring inserte valores, en vez del usuario.
   
   - También se necesita el ManyToOne en los Join de las otras tablas, para
   que al borrar una aplicación lo haga en cascada.
*/

@Entity
@Table(name = "aplicaciones")
public class AplicacionesEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id_app")
	private Integer id_app;
	
	@Column(name = "nombre_app")
	private String nombre_app;
	
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

	//Constructor vacío de Aplicaciones
	public AplicacionesEntity() {
		super();
	}

	/**
	 * Constructor con el ID de Aplicaciones
	 * @param id_app
	 */
	public AplicacionesEntity(Integer id_app) {
		super();
		this.id_app = id_app;
	}

	/**
	 * Constructor de Aplicaciones con Categorías
	 * @param id_app
	 * @param nombre_app
	 * @param version
	 * @param fecha
	 * @param link_imagen
	 * @param link_descarga
	 * @param descripcion
	 * @param categorias
	 */
	public AplicacionesEntity(Integer id_app, String nombre_app, String version, String fecha, String link_imagen,
			String link_descarga, String descripcion, CategoriasEntity categorias) {
		super();
		this.id_app = id_app;
		this.nombre_app = nombre_app;
		this.version = version;
		this.fecha = fecha;
		this.link_imagen = link_imagen;
		this.link_descarga = link_descarga;
		this.descripcion = descripcion;
		this.categorias = categorias;
	}

	/**
	 * Constructor completo de Aplicaciones
	 * @param id_app
	 * @param nombre_app
	 * @param version
	 * @param fecha
	 * @param link_imagen
	 * @param link_descarga
	 * @param descripcion
	 * @param categorias
	 * @param licencias
	 * @param valoraciones
	 */
	public AplicacionesEntity(Integer id_app, String nombre_app, String version, String fecha, String link_imagen,
			String link_descarga, String descripcion, CategoriasEntity categorias, LicenciasEntity licencias,
			ValoracionesEntity valoraciones) {
		super();
		this.id_app = id_app;
		this.nombre_app = nombre_app;
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
	 * Constructor con unicamente la tabla Aplicaciones, sin los Join
	 * @param id_app
	 * @param nombre_app
	 * @param version
	 * @param fecha
	 * @param link_imagen
	 * @param link_descarga
	 * @param descripcion
	 */
	public AplicacionesEntity(Integer id_app, String nombre_app, String version, String fecha, String link_imagen,
			String link_descarga, String descripcion) {
		super();
		this.id_app = id_app;
		this.nombre_app = nombre_app;
		this.version = version;
		this.fecha = fecha;
		this.link_imagen = link_imagen;
		this.link_descarga = link_descarga;
		this.descripcion = descripcion;
	}

	/**
	 * @return the id_app
	 */
	public Integer getId_app() {
		return id_app;
	}

	/**
	 * @param id_app the id_app to set
	 */
	public void setId_app(Integer id_app) {
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
