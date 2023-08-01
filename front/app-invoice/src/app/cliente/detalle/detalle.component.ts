import { Component, Input, OnInit, Output } from '@angular/core';
import { Cliente } from '../cliente';
import { ClienteComponent } from '../cliente.component';
import { ModalService } from './modal.service';
import { HttpEventType } from '@angular/common/http';
import { Factura } from '../../facturas/models/Factura';
import { FacturaService } from 'src/app/facturas/services/factura.service';
import Swal from 'sweetalert2';
import { ClienteService } from '../cliente.service';

@Component({
  selector: 'app-detalle',
  templateUrl: './detalle.component.html',
  styleUrls: ['./detalle.component.css']
})
export class DetalleComponent implements OnInit {

  @Input() cliente: Cliente;
  @Output() xxx:string;

  titulo: string="Detalle del cliente ";

  constructor(private clienteService: ClienteService,
              public modalService: ModalService,
              private facturaSevice: FacturaService){

  }

  ngOnInit(): void {
      this.xxx="rta";
  }

  cerrarModal(){
    this.modalService.cerrarModal();
  }

  delete(factura: Factura): void{

      Swal.fire({
        title: 'Está seguro',
        text: `¿Seguro que desea eliminar la factura: ${factura.descripcion}`,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor:'#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, eliminar'
      }).then((result)=>{
         if(result.value){
            this.facturaSevice.delete(factura.id).subscribe(()=>{
              this.cliente.facturas=this.cliente.facturas.filter(fact=>fact!==factura);
               Swal.fire(
                  'Factura Elminada',
                  `Factura ${factura.descripcion} eliminada con éxito`,
                  'success'
               )
            });
         }
      });

  }

}
