package org.italibi;

import java.io.Serializable;

public class Cliente implements Serializable
{
    private String nombre;
    private String apellidoP;
    private String apellidoM;
    private Integer edad;

    public Cliente() 
    {
    }

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre) 
    {
        this.nombre = nombre;
    }

    public String getApellidoP()
    {
        return apellidoP;
    }

    public void setApellidoP(String apellidoP)
    {
        this.apellidoP = apellidoP;
    }

    public String getApellidoM() 
    {
        return apellidoM;
    }

    public void setApellidoM(String apellidoM)
    {
        this.apellidoM = apellidoM;
    }

    public Integer getEdad() 
    {
        return edad;
    }

    public void setEdad(Integer edad)
    {
        this.edad = edad;
    }
    
}
