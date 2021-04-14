package com.rotsen.baseball.repository;

import com.rotsen.baseball.domain.Baseball;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BaseballRepository extends JpaRepository<Baseball, Integer> {
    /*
    POR NOMENCLATURA / STANDAR LAS INTERFACES TIPO REPOSITORY SE LLAMAN NOMBRE(TABLA)+REPOSITORY 
    EL CONTRATO QUE PIDE JPA SON 2 PARAMETROS:
    1er parametro= CLASE ENTIDAD 
    2do parametro= TIPO DE DATO DE LA CLAVE PRIMARIA (PRIMARY KEY)
    */
    
}
