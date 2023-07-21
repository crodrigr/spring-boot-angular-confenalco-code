package com.demo.demo.services;

import java.util.List;

import com.demo.demo.repository.entities.Cliente;
import com.demo.demo.repository.entities.Factura;
import com.demo.demo.repository.entities.Producto;
import com.demo.demo.repository.entities.Region;

public interface ClienteService {

    public List<Cliente> findAll();

    public Cliente findById(Long Id);

    public Cliente save(Cliente cliente);

    public void delete(Cliente cliente);

    public List<Region> findAllRegiones();

    public Factura findFacturaById(Long id);

    public List<Factura> findFacturaAll();

    public Factura savFactura(Factura factura);

    public void deleteFactura(Long id);

    public List<Producto> findProductoByNombre(String term);

    
    
}
