package com.naldi.canciones.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naldi.canciones.modelos.Cancion;
import com.naldi.canciones.repositorios.RepositorioCanciones;


@Service
public class ServicioCanciones {
  @Autowired
    private final RepositorioCanciones repositorioUsuario;

    public ServicioCanciones(RepositorioCanciones repositorioCanciones) {
        this.repositorioUsuario = repositorioCanciones;
    }

    public Iterable<Cancion> obtenerTodasLasCanciones() {
        return repositorioUsuario.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return repositorioUsuario.findById(id).orElse(null);
    }
}
