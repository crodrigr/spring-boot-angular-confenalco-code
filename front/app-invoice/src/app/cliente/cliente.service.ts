import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/enviroment';
import { Observable } from 'rxjs';
import { Cliente } from '../cliente/cliente';

@Injectable({
  providedIn: 'root'
})
export class ClienteService {

  private urlApi: string ="";

  constructor(private http:HttpClient) {
     this.urlApi=environment.apiUrl+'/api'
  }

  getClientes(): Observable<Cliente[]>{
    return this.http.get<Cliente[]>(this.urlApi+'/clientes');

  }


}
