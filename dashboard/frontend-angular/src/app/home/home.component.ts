import {AfterViewInit, Component, OnInit, ViewChild} from '@angular/core';
import {MatPaginator, MatPaginatorModule} from '@angular/material/paginator';
import {MatTableDataSource, MatTableModule} from '@angular/material/table';
import { Suggestion } from '../Entities/suggestion';
import { MatIconModule } from '@angular/material/icon';
import { SuggestionService } from '../services/suggestions.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],

  standalone: true,
  imports: [MatTableModule, MatPaginatorModule, MatIconModule]
})


export class HomeComponent implements AfterViewInit, OnInit {

  public displayedColumns: string[] = [
    'id',
    'auteur',
    'langue.source',
    'langue.traduction',
    'Expression originale',
    'Expression traduite',
    'audio',
    'Date ajout'];

  dataSource = new MatTableDataSource<Suggestion>();

  constructor(private suggestionService : SuggestionService){}

  @ViewChild(MatPaginator) paginator!: MatPaginator;

  ngAfterViewInit() {
    this.dataSource.paginator = this.paginator;
  }

  ngOnInit() {
    this.suggestionService.getSuggestions().subscribe((
      Resultat_requete: Suggestion[]) => {
        console.log(Resultat_requete)
        this.dataSource.data = Resultat_requete;
      });
  }

  playAudio(audioUrl: string) {
    const audio = new Audio(audioUrl);
    audio.play();
  }

  getDate(dateAjout: string): any {
      const currentDate = new Date();
    // const date = new Date(dateAjout);
      const timeDifference = currentDate.getTime() - new Date(dateAjout).getTime();
      const seconds = Math.floor(timeDifference / 1000);
      const minutes = Math.floor(seconds / 60);
      const hours = Math.floor(minutes / 60);
      const days = Math.floor(hours / 24);
      const months = Math.floor(days / 30);
      const years = Math.floor(months / 12);

      if (years > 0) {
        return years === 1 ? 'Il y a 1 an' : `Il y a ${years} ans`;
      }
      if (months > 0) {
        return months === 1 ? 'Il y a 1 mois' : `Il y a ${months} mois`;
      }
      if (days > 0) {
        return days === 1 ? 'Il y a 1 jour' : `Il y a ${days} jours`;
      }
      if (hours > 0) {
        return hours === 1 ? 'Il y a 1 heure' : `Il y a ${hours} heures`;
      }
      if (minutes > 0) {
        return minutes === 1 ? 'Il y a 1 minute' : `Il y a ${minutes} minutes`;
      }
      if (seconds > 0) {
        return seconds === 1 ? 'Il y a 1 seconde' : `Il y a ${seconds} secondes`;
      }
    }
    // return date.toLocaleDateString(); // Vous pouvez ajuster le format selon vos besoins
}
