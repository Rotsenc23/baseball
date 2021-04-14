package com.rotsen.baseball.controller;

import com.rotsen.baseball.domain.Baseball;
import com.rotsen.baseball.service.BaseballServiceImp;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListadoController {

    private final BaseballServiceImp beisbolService;

    public ListadoController(BaseballServiceImp beisbolService) {
        this.beisbolService = beisbolService;
    }

    @RequestMapping("/")
    public String listarEquipos(Model model) {
        List<Baseball> destacados = beisbolService.buscarDestacados();
        model.addAttribute("team", destacados);

        return "listado";
    }
}
