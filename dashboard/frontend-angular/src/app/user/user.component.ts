import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { UsersService } from '../services/user.service';


@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent {

  loginData = {
    username: '',
    password: ''
  };

  userStatus = {
    name:"",
    language: "",
    connected: false
  }

  stateLogin = false

  constructor(private router: Router, private userService: UsersService) { }

  ngOnInit(){
    this.userStatus = this.userService.isConnected()
    if(this.userStatus){
      this.router.navigate(['/home']);
    }
  }

  onLoginSubmit() {
    const response = this.userService.login(this.loginData.username, this.loginData.password)
    if(response){
      this.router.navigate(['/home']);
    }else{
      this.stateLogin = !this.stateLogin
    }

  }

}
