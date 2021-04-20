package com.rotsen.baseball.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "DISTRIBUIDOR")
public class Distribuidor {
    private int id;
    private String nombreLiga;
    private String sitioWeb;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    @Column(name="ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    @Column(name="NOMBRE_LIGA")
    public String getNombre() {
        return nombreLiga;
    }

    public void setNombre(String nombre) {
        this.nombreLiga = nombre;
    }
    @Column(name="SITIO_WEB")
    public String getSitioWeb() {
        return sitioWeb;
    }

    public void setSitioWeb(String sitioWeb) {
        this.sitioWeb = sitioWeb;
    }

}
