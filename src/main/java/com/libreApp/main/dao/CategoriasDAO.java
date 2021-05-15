/**
 * 
 */
package com.libreApp.main.dao;

/**
 * @author Juan
 *
 */

public interface CategoriasDAO {
	Integer insertarCategoria(Integer id_categoria, String nombre_categoria);
	Integer eliminarCategoria(Integer id_categoria);
}
