package com.naldi.canciones.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naldi.canciones.modelos.Cancion;
import com.naldi.canciones.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {

    @Autowired
    private final RepositorioCanciones repositorioCanciones;

    public ServicioCanciones(RepositorioCanciones repositorioCanciones) {
        this.repositorioCanciones = repositorioCanciones;
    }

    public Iterable<Cancion> obtenerTodasLasCanciones() {
        return repositorioCanciones.findAll();
    }

    public Cancion obtenerCancionPorId(Long id) {
        return repositorioCanciones.findById(id).orElse(null);
    }

    public Cancion agregarCancion(Cancion cancion) {
        return repositorioCanciones.save(cancion);
    }

    public Cancion actualizarCancion(Cancion cancion) {
        return repositorioCanciones.save(cancion);
    }

    public void eliminarCancion(Long idCancion) {
        this.repositorioCanciones.deleteById(idCancion);
    }



}
