package com.naldi.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.naldi.canciones.modelos.Cancion;
import com.naldi.canciones.servicios.ServicioCanciones;

import jakarta.validation.Valid;

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

    @GetMapping("/canciones/formulario/agregar")
    public String formularioAgregarCancion(@ModelAttribute("cancion") Cancion cancion) {
        return "agregarCancion";
    }

    @PostMapping("/canciones/procesa/agregar")
    public String procesarAgregarCancion(
            @Valid @ModelAttribute("cancion") Cancion cancion,
            BindingResult validaciones) {

        if (validaciones.hasErrors()) {
            return "agregarCancion";
        }

        servicioCanciones.agregarCancion(cancion);

        return "redirect:/canciones";
    }

    @GetMapping("/canciones/formulario/editar/{idCancion}")
    public String formularioEditarCancion(@PathVariable Long idCancion, Model model) {
        Cancion cancion = this.servicioCanciones.obtenerCancionPorId(idCancion);

        model.addAttribute("cancion", cancion);
        return "editarCancion";
    }

    @PutMapping("/canciones/procesa/editar/{idCancion}")
    public String procesarEditarCancion(
            @PathVariable Long idCancion,
            @Valid @ModelAttribute("cancion") Cancion cancion,
            BindingResult validaciones) {

        if (validaciones.hasErrors()) {
            return "editarCancion";
        }

        this.servicioCanciones.actualizarCancion(cancion);

        return "redirect:/canciones";
    }

}
