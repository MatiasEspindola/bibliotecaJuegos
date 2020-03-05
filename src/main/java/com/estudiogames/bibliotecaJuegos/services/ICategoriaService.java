/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.estudiogames.bibliotecaJuegos.services;

import com.estudiogames.bibliotecaJuegos.models.entities.Categoria;
import java.util.List;

/**
 *
 * @author matia
 */
public interface ICategoriaService {

    public List<Categoria> listar();

    public Categoria buscarPorId(Long id);
    
}
