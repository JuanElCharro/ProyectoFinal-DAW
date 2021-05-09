/**
 * 
 */
package com.libreApp.main.dao;

import java.util.List;

import com.libreApp.main.dtos.CombosDTO;

/**
 * @author Juan
 *
 */
public interface CombosDAO {
	List<CombosDTO> comboLicencias();
	List<CombosDTO> comboCategorias();
	List<CombosDTO> comboValoraciones();
}
