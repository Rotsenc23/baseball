package com.rotsen.baseball.domain;

import javax.persistence.Entity;

@Entity
public class Distribuidor {
    private Integer id;
    private String nombreLiga;
    private String sitioWeb;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreLiga() {
        return this.nombreLiga;
    }

    public void setNombreLiga(String nombreLiga) {
        this.nombreLiga = nombreLiga;
    }

    public String getSitioWeb() {
        return this.sitioWeb;
    }

    public void setSitioWeb(String sitioWeb) {
        this.sitioWeb = sitioWeb;
    }
    
    
}
