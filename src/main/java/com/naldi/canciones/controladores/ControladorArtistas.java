package com.naldi.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.naldi.canciones.modelos.Artista;
import com.naldi.canciones.servicios.ServicioArtistas;

import jakarta.validation.Valid;





@Controller
public class ControladorArtistas {

    @Autowired
    private final ServicioArtistas servicioArtistas;

    public ControladorArtistas(ServicioArtistas servicioArtistas) {
        this.servicioArtistas = servicioArtistas;
    }

    @GetMapping("/artistas")
    public String desplegarArtistas(Model model) {
      Iterable<Artista> listaArtistas = this.servicioArtistas.obtenerTodosLosArtistas();
      model.addAttribute("listaArtistas", listaArtistas);
        return "artistas";
    }

   @GetMapping("/artistas/detalle/{idArtista}")
public String desplegarDetalleArtista(@PathVariable Long idArtista, Model model) {

    Artista artista = this.servicioArtistas.obtenerArtistaPorId(idArtista);

    model.addAttribute("artista", artista);

    return "detalleArtista";
}
    

@GetMapping("/artistas/formulario/agregar")
public String formularioAgregarArtista(@ModelAttribute("artista") Artista artista) {
    return "agregarArtista";
}

@PostMapping("/artistas/procesa/agregar")
public String procesarAgregarArtista(@Valid @ModelAttribute("artista") Artista artista,
            BindingResult validaciones) {
 
     if (validaciones.hasErrors()) {
            return "agregarArtista";
        }

        servicioArtistas.agregarArtista(artista);

        return "redirect:/artistas";
    }
}


    

