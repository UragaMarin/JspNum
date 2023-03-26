/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.italibi;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Negocio implements Serializable
{
    private List<Datos>lista;

    public Negocio() 
    {
    }
    
    public boolean loadLista( )
    {
        Datos datos = null;
        lista = new ArrayList<>();
        for( int i = 1; i <= 5; i++)
        {
            datos = new Datos( );
            datos.setNombre( String.format("Abc %d", i) );
            datos.setEdad((int)(Math.random() * 10));
            datos.setContraseña(String.format("Abc %d", i) );
            datos.setCorreo(String.format("Abc %d", i) );
            datos.setGenero(String.format("Abc %d", i) );
            datos.setFecha(String.format( "Abc %d", i));
            datos.setUrl(String.format( "Abc %d", i));
            lista.add(datos);
        }
        return lista != null && !lista.isEmpty();
    }

    public List<Datos> getLista() 
    {
        if( lista == null || lista.isEmpty() )
        {
            if( !loadLista( ) )
            {
                return null;
            }
        }
        return lista;
    }

    public void setLista(List<Datos> lista) 
    {
        this.lista = lista;
    }
    
    
    
    
    
    
    
}
