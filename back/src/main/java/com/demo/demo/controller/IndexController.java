package com.demo.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexController {

    @GetMapping("/hola")
    public String holaMundo(){
          
        return "Hola mundo desde spring boot";

    }

    @GetMapping("/hola/{nombre}")
    public String saludo(@PathVariable String nombre){
          
        return "Un saludo, como esta: "+nombre;

    }


    
}
