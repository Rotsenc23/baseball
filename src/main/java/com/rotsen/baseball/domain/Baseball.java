package com.rotsen.baseball.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/*
TODAS LAS CLASES CON @ENTITY INDICA QUE ES UNA TABLA EN LA BASE DE DATOS, BIEN SEA MARIADB O MYSQL
ESTA ES UNA CLASE CON LOS STANDARES QUE PIDE JPA DE CREACION DE ENTIDADES
*/
@Entity
@Table(name = "BASEBALL")
public class Baseball {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String nombreEquipo;
    private String descripcion;
    private String imagenUrl;
    @ManyToOne
    private String distribuidor;

    
    @Column(name = "ID")
    @Id
    public Integer getId() {
        return this.id;
    }

    @Column(name = "NOMBRE_EQUIPO")
    public String getNombreEquipo() {
        return this.nombreEquipo;
    }

    @Column(name = "DESCRIPCION")
    public String getDescripcion() {
        return this.descripcion;
    }

    @Column(name = "IMAGEN_URL")
    public String getImagenUrl() {
        return this.imagenUrl;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setNombreEquipo(String nombreEquipo) {
        this.nombreEquipo = nombreEquipo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setImagenUrl(String imagenUrl) {
        this.imagenUrl = imagenUrl;
    }

}
