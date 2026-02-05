import { ChangeDetectorRef, Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
/* Importar */
import { UserService } from '../services/user.service/user.service';
import { JsonPipe } from '@angular/common';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, JsonPipe],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class App {
  protected readonly title = signal('mi-primer-agular');

  Users: any[] = [];

  constructor(private userSer: UserService, private chp: ChangeDetectorRef){

    this.userSer.getUsers().subscribe(data => {
      this.Users = data;
      console.log(this.Users);
      this.chp.detectChanges();
    }); 
  }

  detectChange(){
    this.chp.detectChanges();
  }
}
