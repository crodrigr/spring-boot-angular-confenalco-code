import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/enviroment';
import { Observable, throwError } from 'rxjs';
import { map, catchError, tap } from 'rxjs/operators';
import { Cliente } from '../cliente/cliente';
import { Region } from './region';

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

  getRegiones(): Observable<Region[]>{
    return this.http.get<Region[]>(`${this.urlApi}/clientes/regiones`);
  }

  create(cliente: Cliente): Observable<Cliente>{
    return this.http.post<Cliente>(`${this.urlApi}/clientes`,cliente).pipe(
       map((response: any)=> response.cliente as Cliente),
       catchError(e=>{
         if(e.status==400){
          return throwError(()=>e);
         }
         if(e.error.mensaje){
          console.log(e.error.mensaje);
         }
         return throwError(()=>e);
       })
    );
      }

   
  








}
