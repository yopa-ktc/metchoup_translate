import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';

import { Observable, throwError, of, catchError } from 'rxjs';

import { User } from '../Entities/user';

@Injectable({
  providedIn: 'root'
})

export class UsersService {

  private readonly LANGUES_API_URL = 'http://localhost:8080/users';


  constructor(private http: HttpClient) {}

  public getLanguages(): Observable<User[]> {
    return this.http.get<User[]>(this.LANGUES_API_URL).pipe(
      catchError(this.handleHttpError));
  }

  // public addLanguage(data: object): void{
  //   // console.log(data)
  //   this.http.post(this.ADD_API_URL, data).subscribe(
  //     (Response) => {console.log("objet ajouté")}
  //   )
  // }

  // public editLanguage(data: object, id: number): void{
  //   this.http.post(this.GET_LANGUAGE_URL + "/" + id, data).subscribe(
  //     (Response) => {console.log("objet modifié")}
  //   )
  // }

  // public getLanguage(id: any): Observable<ILangue>{
  //   return this.http.get<ILangue>(this.GET_LANGUAGE_URL + '/' + id).pipe(
  //     catchError(this.handleHttpError));
  // }

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
