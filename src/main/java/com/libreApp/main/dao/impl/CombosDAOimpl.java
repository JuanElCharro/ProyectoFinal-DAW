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
import com.libreApp.main.entities.CategoriasEntity;
import com.libreApp.main.entities.ComentariosEntity;
import com.libreApp.main.entities.LicenciasEntity;
import com.libreApp.main.repositorios.CategoriasRepository;
import com.libreApp.main.repositorios.ComentariosRepository;
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
	private ComentariosRepository comentariosRepository; 

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
	public List<CombosDTO> comboComentarios() {
		Iterable<ComentariosEntity> listaEntidadesComentarios = comentariosRepository.findAll();
		List<CombosDTO> listaComentarios = mapeoEntidadComentariosComboDTO(listaEntidadesComentarios);
		return listaComentarios;
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
	
	private List<CombosDTO> mapeoEntidadComentariosComboDTO(Iterable<ComentariosEntity> lista){
		List<CombosDTO> listaComentarios = new ArrayList<CombosDTO>();
		for (ComentariosEntity m : lista) {
			listaComentarios.add(new CombosDTO(m.getId_comentario(), m.getComentario()));
		}
		return listaComentarios;
	}
}
