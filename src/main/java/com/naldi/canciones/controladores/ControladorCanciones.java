package com.naldi.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.naldi.canciones.modelos.Cancion;
import com.naldi.canciones.servicios.ServicioCanciones;


@Controller
public class ControladorCanciones {

  @Autowired
  private ServicioCanciones servicioCanciones;

  public ControladorCanciones(ServicioCanciones servicioCanciones) {
    this.servicioCanciones = servicioCanciones;
  }

  @GetMapping("/canciones")
  public String desplegarCanciones(Model model) {
    Iterable<Cancion> listaCanciones = this.servicioCanciones.obtenerTodasLasCanciones();

    model.addAttribute("listaCanciones", listaCanciones);

    return "canciones";
  }

  @GetMapping("/canciones/detalles/{idCancion}")
  public String desplegarCancion(Model model, @PathVariable Long idCancion) {
    Cancion cancion = this.servicioCanciones.obtenerCancionPorId(idCancion);

    model.addAttribute("cancion", cancion);
    return "detalleCancion";
  }
  
  

}
