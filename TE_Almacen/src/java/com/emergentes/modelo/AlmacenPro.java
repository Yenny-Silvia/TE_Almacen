package com.emergentes.modelo;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AlmacenPro {
    private int correlativo;
    private ArrayList<Almacen> libros;

    public AlmacenPro() {
        libros = new ArrayList<Almacen>();
    }
    public int getCorrelativo() {
        return correlativo;
    }
    public void setCorrelativo(int correlativo) {
        this.correlativo = correlativo;
    }
    public ArrayList<Almacen> getLibros() {
        return libros;
    }
    public void setLibros(ArrayList<Almacen> libros) {
        this.libros = libros;
    }
    public void insertar (Almacen item){
        libros.add(item);
    }
    public void modificar(int id, Almacen item){
        int pos = posicion(id);
        libros.set(pos, item);
    }
    public void eliminar(int id){
        int pos = posicion(id);
        libros.remove(pos);
    }
    public int posicion(int id){
        int i = -1;
        if (libros.size() > 0) {
            for (Almacen item : libros) {
                ++i;
                if (item.getId() == id) {
                    break;
                }
            }
        }
        return i;
    }
}
