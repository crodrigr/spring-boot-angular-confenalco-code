import { Component, OnInit } from '@angular/core';
import { Cliente } from '../cliente/cliente';
import { ClienteService } from './cliente.service';

@Component({
  selector: 'app-cliente',
  templateUrl: './cliente.component.html',
  styleUrls: ['./cliente.component.css']
})
export class ClienteComponent implements OnInit {

  title: string='Cliente';
  clientes: Cliente[]=[];

  constructor(private clienteService:ClienteService){

  }

  ngOnInit(): void {
    this.getClientes();
  }

  getClientes(): void{
    this.clienteService.getClientes().subscribe({
      next:(respuesta)=>{
        this.clientes=respuesta;
        
      },
      error:()=>{},
      complete:()=>{
        console.log(this.clientes);
      }
    });

  }

  delete(cliente: Cliente): void{
   if(cliente.id!=undefined){
    this.clienteService.delete(cliente.id).subscribe({
      next: ()=>{
        this.clientes = this.clientes.filter(cli=>cli!==cliente)
      }
    })
  }  
 }

}
