import { Component, Inject } from '@angular/core';
import { MAT_DIALOG_DATA} from '@angular/material/dialog';
import { Suggestion } from '../services/suggestions.service';

@Component({
  selector: 'app-dialog-content-example-dialog',
  templateUrl: './dialog-content-example-dialog.component.html',
  styleUrls: ['./dialog-content-example-dialog.component.css']
})
export class DialogContentExampleDialogComponent {

  constructor(@Inject(MAT_DIALOG_DATA) public data: any) {}

  playAudio(audioUrl: string): void {
    const audio = new Audio(audioUrl);
    audio.play();
  }

  save(data: any){
    alert("Suggestion enregistrée !")
    //Envoyer un mail
  }

  publish(data: any){
    alert("suggestion publiée !")
  }

  delete(data: any){

  }

  onSubmit(){
    console.log('Form submitted');
  }
}
