import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from '../home/home.component';
import { SettingsComponent } from '../settings/settings.component';
import { UserComponent } from '../user/user.component';

const routes: Routes = [
  {path:'', component: HomeComponent},
  {path:'home', component: HomeComponent},
  {path: 'settings', component: SettingsComponent},
  {path: 'login', component: UserComponent },
  // {path:'edit/', component: SuggestionDetails},
  // {path:'**', redirectTo: '/'}
];

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports: [RouterModule]
})

export class AppRoutingModule { }
