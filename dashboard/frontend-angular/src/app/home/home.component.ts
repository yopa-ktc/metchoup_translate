import { AfterViewInit, Component, OnInit, ViewChild} from '@angular/core';
import { MatPaginator} from '@angular/material/paginator';
import { MatTableDataSource} from '@angular/material/table';
import { MatSort} from '@angular/material/sort';
import { Suggestion } from '../Entities/suggestion';
import { SuggestionService } from '../services/suggestions.service';
import {SelectionModel} from '@angular/cdk/collections';
import {MatDialog} from '@angular/material/dialog';
import { DialogContentExampleDialogComponent } from '../dialog-content-example-dialog/dialog-content-example-dialog.component';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  // standalone: true,
  // imports: [MatTableModule, MatButtonModule, MatToolbarModule, MatDialogModule, MatPaginatorModule, MatIconModule, MatSortModule, MatCheckboxModule,MatInputModule]
})


export class HomeComponent implements AfterViewInit, OnInit {

  public displayedColumns: string[] = [
    'id',
    'Expression originale',
    'langue.source',
    'Expression traduite',
    'langue.traduction',
    // 'audio',
    'auteur',
    'Date ajout'];

  dataSource = new MatTableDataSource<Suggestion>;
  selection = new SelectionModel<Suggestion>(true, []);

  constructor(private suggestionService : SuggestionService, public dialog: MatDialog){}

  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @ViewChild(MatSort) sort!: MatSort;

  ngAfterViewInit() {
    this.dataSource.paginator = this.paginator;
    this.dataSource.sort = this.sort;
  }

  openDialog(row: Suggestion) {
    const dialogRef = this.dialog.open(DialogContentExampleDialogComponent, {
      data: row
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('Dialog result', row);
    });
  }

  ngOnInit() {
    this.suggestionService.getSuggestions().subscribe((
      Resultat_requete: Suggestion[]) => {
        // this.dataSource.data = Resultat_requete;
        this.dataSource.data = Resultat_requete.sort(this.compareDates);
    });
  }

  // playAudio(audioUrl: string) {
  //   const audio = new Audio(audioUrl);
  //   audio.play();
  // }

  applyFilter(event: Event) {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();
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

    compareDates(a: Suggestion, b: Suggestion): number {
      const dateA = new Date(a.dateAjout);
      const dateB = new Date(b.dateAjout);

      if (dateA > dateB) {
        return -1; // a est supérieur à b
      } else if (dateA < dateB) {
        return 1; // a est inférieur à b
      } else {
        return 0; // les dates sont égales
      }
    }

    isAllSelected() {
      const numSelected = this.selection.selected.length;
      const numRows = this.dataSource.data.length;
      return numSelected === numRows;
    }

    /** Selects all rows if they are not all selected; otherwise clear selection. */
    toggleAllRows() {
      if (this.isAllSelected()) {
        this.selection.clear();
        return;
      }

      this.selection.select(...this.dataSource.data);
    }

    /** The label for the checkbox on the passed row */
    checkboxLabel(row?: Suggestion): string {
      if (!row) {
        return `${this.isAllSelected() ? 'deselect' : 'select'} all`;
      }
      return `${this.selection.isSelected(row) ? 'deselect' : 'select'} row ${row.id + 1}`;
    }
}
