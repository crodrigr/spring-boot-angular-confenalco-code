package com.demo.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.demo.demo.repository.entities.Factura;

public interface FacturaRepository extends CrudRepository<Factura,Long>{
    
}
