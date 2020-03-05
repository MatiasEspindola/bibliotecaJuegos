/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.estudiogames.bibliotecaJuegos.models.dao;

import com.estudiogames.bibliotecaJuegos.models.entities.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author matia
 */
public interface ICategoriaDao extends JpaRepository<Categoria, Long>{
    
}
