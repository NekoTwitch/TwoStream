import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';

const _routes: Routes = [
    { path: '',
      component: HomeComponent,    
      pathMatch: 'full'
    },
    {
    path: 'login',
    component: LoginComponent
  },
  {
    path: 'home',
    component: HomeComponent
  },

  // { path: '**', component: PageNotFoundComponent }
];

@NgModule({
  exports: [ RouterModule ],
  imports: [ RouterModule.forRoot(_routes) ]
})
export class AppRoutingModule {}
