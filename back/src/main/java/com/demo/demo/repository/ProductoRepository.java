package com.demo.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.demo.demo.repository.entities.Producto;

public interface ProductoRepository extends CrudRepository<Producto,Long> {
    
    @Query("SELECT p FROM Producto p WHERE p.nombre LIKE  ?1")
    public List<Producto> findByNombre(String term,String x);

    public List<Producto> findByNombreContainingIgnoreCase(String term);

    public List<Producto> findByNombreStartingWithIgnoreCase(String term);
    
    
}
