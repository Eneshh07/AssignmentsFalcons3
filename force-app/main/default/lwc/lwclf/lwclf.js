import { LightningElement } from 'lwc';

export default class Lwclf extends LightningElement {
    showSection = false;


   handleClick() {
  
    this.showSection =   this.showSection ? false : true;
    
   }
}