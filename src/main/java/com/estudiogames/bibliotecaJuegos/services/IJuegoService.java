/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.estudiogames.bibliotecaJuegos.services;

import com.estudiogames.bibliotecaJuegos.models.entities.Juego;
import java.util.List;

/**
 *
 * @author matia
 */
public interface IJuegoService {
    
    public List<Juego> listar();
    
    public Juego buscarPorId(Long id);
    
    public void guardar(Juego juego);
    
    public void habilitar(Juego juego);
    
    public void deshabilitar(Juego juego);
    
}
