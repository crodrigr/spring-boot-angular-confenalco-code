import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ClienteComponent } from '../app/cliente/cliente.component';
import { FormComponent } from '../app/cliente/form.component';
import { FacturaComponent } from './facturas/factura.component';

const routes: Routes = [
  { path: 'clientes', component: ClienteComponent},
  { path: 'clientes/form', component: FormComponent},
  { path: 'clientes/form/:id', component: FormComponent},
  { path: 'facturas/form/:clienteId', component: FacturaComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
