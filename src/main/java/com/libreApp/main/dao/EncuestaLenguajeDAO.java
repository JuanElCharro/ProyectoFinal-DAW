package com.libreApp.main.dao;


import java.util.List;
import com.libreApp.main.dtos.EncuestaLenguajeDTO;

/**
 * @author Juan
 *
 */

public interface EncuestaLenguajeDAO {
	//List<EncuestaLenguajeDTO> obtenerAlumnosporIdyNombre(Integer id, String nombre);
	Integer insertarLenguaje(Integer id, String lenguaje, String descripcion);
	//Integer actualizaralumno(Integer id, String nombre, Integer idMunicipio, Integer famNumerosa);
	//Integer eliminarAlumno(Integer id);
	//boolean esFamiliaNumerosa(Integer idAlumno);
}
