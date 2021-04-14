package com.rotsen.baseball.service;

import com.rotsen.baseball.domain.Baseball;
import java.util.List;

/*
POR ESTANDAR CUANDO TENEMOS UN SERVICIO, QUE SE LLAMA DESDE UN CONTROLADOR, SE CREA UN INTERFACE PARA ABSTRAER FUNCIONALIDADES
*/
public interface BaseballService {

    public List<Baseball> buscarDestacados();

}
