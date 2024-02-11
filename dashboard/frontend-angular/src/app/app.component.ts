import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { UsersService } from './services/user.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {

  title = 'Dashboard - Metchoup.Translate';
  userData = {
    name:"",
    language: "",
    connected: false
  };

  constructor(private router: Router, private userService: UsersService) { }


  ngOnInit(){
    this.userData = this.userService.isConnected()
    if(!this.userData){
      this.router.navigate(['/login']);
    }
  }

  logout(){
    this.userService.logout()
    this.router.navigate(['/login']);
    window.location.reload();
  }

}
