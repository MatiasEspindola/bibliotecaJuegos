/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.estudiogames.bibliotecaJuegos.services;

import com.estudiogames.bibliotecaJuegos.models.dao.ICategoriaDao;
import com.estudiogames.bibliotecaJuegos.models.entities.Categoria;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author matia
 */
@Service
public class CategoriaServiceImpl implements ICategoriaService {

    @Autowired
    private ICategoriaDao dao;

    @Override
    @Transactional(readOnly = true)
    public List<Categoria> listar() {
       return dao.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Categoria buscarPorId(Long id) {
        return dao.findById(id).orElse(null);
    }

}
