import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Router } from '@angular/router';
import { Observable, throwError, of, catchError } from 'rxjs';

import { User } from '../Entities/user';

@Injectable({
  providedIn: 'root'
})

export class UsersService {

  private PASSWORD_TEACHERS = "237H@dewa"
  private TEACHERS_EMAILS = [
    {email:"guytowagmt@gmail.com",language: "medumba"},
    {email:"ehop94@yahoo.com",language: "bassa"},
    {email:"ewondo.jenner@hotmail.com", language: "fangBeti"},
    {email:"louistematio43@gmail.com",language: "yemba"},
    {email:"mchristabel2017@gmail.com",language: "medumba"},
    {email:"aissatadakuyo@gmail.com",language: "dioula"},
    {email:"jacquesmakaninzo@gmail.com",language: "kikongo"},
    {email:"sebaimhotep@gmail.com",language: "medunetcher"},
    {email:"delwendesakande@gmail.com",language: "moore"},
    {email:"dossoruthdemguher@gmail.com",language: "fufulde"},
    {email:"Kevinemaffo96@gmail.com",language: "ghomala"},
    {email:"zambopatrick7@gmail.com", language: "fangBeti"},
    {email:"Sophiedonalde03@gmail.com", language: "bassa"},
    {email:"dorakilanga@gmail.com", language: "swahili"}
  ]


  constructor(private http: HttpClient, private router: Router) {}


  public isConnected(){
    const userDataString = localStorage.getItem('userStatus');
    // console.log(localStorage.getItem('userStatus'))
    if (userDataString) {
      return JSON.parse(userDataString);
    }else{
      return false
    }
  }

  public login(username: string, password: string){
    let response = false;
    if(this.TEACHERS_EMAILS.some(teacher => teacher.email === username) && password == this.PASSWORD_TEACHERS){
      let userStatus = {
        name:username,
        language: this.TEACHERS_EMAILS.find(teacher => teacher.email === username)?.language,
        connected: true
      }
      localStorage.setItem('userStatus', JSON.stringify(userStatus));
      response = true
    }
    return response
  }

  public logout(){
    localStorage.removeItem('userStatus');
  }

  handleHttpError(err: HttpErrorResponse) {
    let error: string;
    if (err.error instanceof ErrorEvent) {
      // A client-side or network error occurred. Handle it accordingly.
      console.error('An error occurred:', err.error.message);
      error = `An error occurred: ${err.error.message}`;
    } else {
      // The backend returned an unsuccessful response code.
      // The response body may contain clues as to what went wrong.
      console.error(
        `Backend returned code ${err.status}, ` +
        `body was: ${err.error}`
      );
      error = `Backend returned code ${err.status}, body was: ${err.error}`;
    }
    // Return an observable with a user-facing error message.
    return throwError(
      'Something bad happened; please try again later.'
      + '\n'
      + error
    );
  }
}
