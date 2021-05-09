/**
 * 
 */
package com.libreApp.main.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.libreApp.main.dao.CombosDAO;
import com.libreApp.main.dtos.CombosDTO;
import com.libreApp.main.entities.AplicacionesEntity;
import com.libreApp.main.entities.CategoriasEntity;
import com.libreApp.main.entities.ValoracionesEntity;
import com.libreApp.main.entities.LicenciasEntity;
import com.libreApp.main.repositorios.AplicacionesRepository;
import com.libreApp.main.repositorios.CategoriasRepository;
import com.libreApp.main.repositorios.ValoracionesRepository;
import com.libreApp.main.repositorios.LicenciasRepository;

/**
 * @author Juan
 *
 */

@Service
public class CombosDAOimpl implements CombosDAO{
	
	@Autowired
	private LicenciasRepository licenciasRepository; 
	
	@Autowired
	private CategoriasRepository categoriasRepository; 
	
	@Autowired
	private ValoracionesRepository valoracionesRepository; 

	@Override
	public List<CombosDTO> comboLicencias() {
		Iterable<LicenciasEntity> listaEntidadesLicencias = licenciasRepository.findAll();
		List<CombosDTO> listaLicencias = mapeoEntidadLicenciasComboDTO(listaEntidadesLicencias);
		return listaLicencias;
	}

	@Override
	public List<CombosDTO> comboCategorias() {
		Iterable<CategoriasEntity> listaEntidadesCategorias = categoriasRepository.findAll();
		List<CombosDTO> listaCategorias = mapeoEntidadCategoriasComboDTO(listaEntidadesCategorias);
		return listaCategorias;
	}

	@Override
	public List<CombosDTO> comboValoraciones() {
		Iterable<ValoracionesEntity> listaEntidadesValoraciones = valoracionesRepository.findAll();
		List<CombosDTO> listaValoraciones = mapeoEntidadValoracionesComboDTO(listaEntidadesValoraciones);
		return listaValoraciones;
	}
	
	//Recoger solo algunos campos
	
	private List<CombosDTO> mapeoEntidadLicenciasComboDTO(Iterable<LicenciasEntity> lista){
		List<CombosDTO> listaLicencias = new ArrayList<CombosDTO>();
		for (LicenciasEntity m : lista) {
			listaLicencias.add(new CombosDTO(m.getId_licencia(), m.getNombre_licencia()));
		}
		return listaLicencias;
	}
	
	private List<CombosDTO> mapeoEntidadCategoriasComboDTO(Iterable<CategoriasEntity> lista){
		List<CombosDTO> listaCategorias = new ArrayList<CombosDTO>();
		for (CategoriasEntity m : lista) {
			listaCategorias.add(new CombosDTO(m.getId_categoria(), m.getNombre_categoria()));
		}
		return listaCategorias;
	}
	
	private List<CombosDTO> mapeoEntidadValoracionesComboDTO(Iterable<ValoracionesEntity> lista){
		List<CombosDTO> listaValoraciones = new ArrayList<CombosDTO>();
		for (ValoracionesEntity m : lista) {
			listaValoraciones.add(new CombosDTO(m.getId_valoracion(), m.getValores()));
		}
		return listaValoraciones;
	}

}
