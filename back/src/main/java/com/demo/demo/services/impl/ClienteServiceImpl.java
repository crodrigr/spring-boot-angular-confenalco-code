package com.demo.demo.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.demo.repository.ClienteRepository;
import com.demo.demo.repository.FacturaRepository;
import com.demo.demo.repository.ProductoRepository;
import com.demo.demo.repository.entities.Cliente;
import com.demo.demo.repository.entities.Factura;
import com.demo.demo.repository.entities.Producto;
import com.demo.demo.repository.entities.Region;
import com.demo.demo.services.ClienteService;


@Service
public class ClienteServiceImpl implements ClienteService{

    @Autowired
    private ClienteRepository clienteRepository;

    @Autowired
    private FacturaRepository facturaRepository;

    @Autowired
    private ProductoRepository productoRepository;

    @Override
    @Transactional(readOnly = true)
    public List<Cliente> findAll() {
        return (List<Cliente>) clienteRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Cliente findById(Long Id) {
        return clienteRepository.findById(Id).orElse(null);
        
    }

    @Override
    @Transactional()
    public Cliente save(Cliente cliente) {
        return clienteRepository.save(cliente);
    }

    @Override
    @Transactional()
    public void delete(Cliente cliente) {
        clienteRepository.delete(cliente);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Region> findAllRegiones() {
        return clienteRepository.findAllRegiones();
    }

    @Override
    public Factura findFacturaById(Long id) {
       return facturaRepository.findById(id).orElse(null);
    }

    @Override
    public List<Factura> findFacturaAll() {
        return (List<Factura>) facturaRepository.findAll();
    }

    @Override
    public Factura savFactura(Factura factura) {
        return facturaRepository.save(factura);
    }

    @Override
    public void deleteFactura(Long id) {
        facturaRepository.deleteById(id);
    }

    @Override
    public List<Producto> findProductoByNombre(String term) {
        return productoRepository.findByNombreContainingIgnoreCase(term);
    }
    
}
