import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Observable, throwError, of, catchError } from 'rxjs';
import { ExpressionObject } from '../Entities/expression-object';

@Injectable({
  providedIn: 'root'
})


export class ManageFileService {
  private GET_EXPRESSION_TO_TRANSLATE_FILE = 'https://translate.metchoup.com/admin/admin/api/getExpression/'
  private POST_EXPRESSION_TO_TRANSLATE = "https://translate.metchoup.com/admin/admin/api/postExpressionFile"

  // private GET_EXPRESSION_TO_TRANSLATE_FILE = 'http://localhost/admin/api/getExpression/'
  // private POST_EXPRESSION_TO_TRANSLATE = "http://localhost/admin/api/postExpressionFile"

  constructor(private http: HttpClient) { }

  public getExpressionFile(language: string): Observable<ExpressionObject>{
    return this.http.get<ExpressionObject>(this.GET_EXPRESSION_TO_TRANSLATE_FILE+language);
  }

  public postTranslation(language: string, expressionTranslated:string, currentLine:number):Observable<any>{
    const requestBody = {
      language: language,
      expressionTranslated: expressionTranslated,
      currentLine: currentLine
    };
    return this.http.post<any>(this.POST_EXPRESSION_TO_TRANSLATE, requestBody);
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
