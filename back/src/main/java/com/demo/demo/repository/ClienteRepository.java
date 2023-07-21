package com.demo.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.demo.demo.repository.entities.Cliente;
import com.demo.demo.repository.entities.Region;

public interface ClienteRepository extends CrudRepository<Cliente,Long> {

    @Query("from Region")
    public List<Region> findAllRegiones();  
    
    
}
