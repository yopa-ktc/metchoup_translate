import { Component, Inject, OnInit } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { ManageFileService } from '../services/manage-file.service';


@Component({
  selector: 'app-dialog-from-file',
  templateUrl: './dialog-from-file.component.html',
  styleUrls: ['./dialog-from-file.component.css']
})


export class DialogFromFileComponent implements OnInit {

  constructor(@Inject(MAT_DIALOG_DATA) public data: any,
              private manageFileService: ManageFileService,
              private dialogRef: MatDialogRef<DialogFromFileComponent>) {

  }

  textFiletranslated = "";
  spinnerView = false;
  stateTranslation = false;
  recording: boolean = false;
  mediaRecorder: MediaRecorder | null = null;
  recordedChunks: Blob[] = [];
  recordedBlobURL: any = null;


  ngOnInit(){
    // console.log(this.data)
  }

  onSubmit() {
    this.spinnerView = true;
    this.manageFileService.postTranslation(this.data.lang, this.textFiletranslated, this.data.currentLine).subscribe(
      (response) => {
        if(response.message === "Expression inserted successfully") {
          this.spinnerView = false;
          this.stateTranslation = true;
          setTimeout(() => {
            this.dialogRef.close();
          }, 4000);
        }
    });

    // if(this.recordedBlobURL) {
    //   fetch(this.recordedBlobURL)
    //     .then(response => response.blob())
    //     .then(blob => {
    //       const formData = new FormData();
    //       formData.append('textFiletranslated', this.textFiletranslated);
    //       formData.append('audioBlob', blob, 'recordedAudio.webm');
    //       console.log(formData)
    //     });
    // }
  }

  saveTraductionInFile(sheetName: string, expression: any, ligneCellule: number){
    console.log(sheetName, expression, ligneCellule);
  }

  onFileSelected(event: any) {
    const file = event.target.files[0];

    if (file) {
      // Faites ce que vous voulez avec le fichier, par exemple l'afficher dans la console
      console.log('Fichier audio sélectionné :', file);

      // Vous pouvez également utiliser FileReader pour lire le contenu du fichier si nécessaire
      const fileReader = new FileReader();
      fileReader.onload = (e: any) => {
        const audioData = e.target.result;
        console.log('Données audio :', audioData);
      };
      fileReader.readAsArrayBuffer(file);
    }
  }

  startRecording() {
    navigator.mediaDevices.getUserMedia({ audio: true })
      .then((stream) => {
        this.mediaRecorder = new MediaRecorder(stream);

        this.mediaRecorder.ondataavailable = (event) => {
          if (event.data.size > 0) {
            this.recordedChunks.push(event.data);
          }
        };

        this.mediaRecorder.onstop = () => {
          this.recordedBlobURL = URL.createObjectURL(new Blob(this.recordedChunks, { type: 'audio/webm' }));
        };

        this.mediaRecorder.start();
        this.recording = true;
      })
      .catch((error) => {
        console.error('Erreur lors de l\'accès au microphone :', error);
      });
  }

  stopRecording() {
    if (this.mediaRecorder) {
      this.mediaRecorder.stop();
      this.recording = false;
    }
  }

  saveRecordingLocally() {
    if (this.recordedChunks.length > 0) {
      const combinedBlob = new Blob(this.recordedChunks, { type: 'audio/webm' });

      const reader = new FileReader();
      reader.onload = () => {
        const base64AudioData = reader.result as string;
        localStorage.setItem('recordedAudio', base64AudioData);
      };
      reader.readAsDataURL(combinedBlob);
    }
  }
}
