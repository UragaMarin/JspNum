package org.italibi;
import java.io.Serializable;
public class Datos implements Serializable{
    private String nombre;
    private float calf;

    public Datos() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getCalf() {
        return calf;
    }

    public void setCalf(float calf) {
        this.calf = calf;
    }
    
    
}
