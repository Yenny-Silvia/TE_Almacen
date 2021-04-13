
package com.emergentes.modelo;

public class Almacen {
    private int id;
    private int estado;
    private String Producto;
    private float Precio;
    private int Cantidad;
    
    public Almacen() 
    {
        id = 0;
        Producto = "";
        Precio = 0;
        Cantidad = 0;
        estado = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getProducto() {
        return Producto;
    }

    public void setProducto(String Producto) {
        this.Producto = Producto;
    }

    public float getPrecio() {
        return Precio;
    }

    public void setPrecio(float Precio) {
        this.Precio = Precio;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }  
}
