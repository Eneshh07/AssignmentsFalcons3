import { LightningElement, wire } from 'lwc';
import getAccountByKeyword from '@salesforce/apex/AccountController.getAccountByKeyword';

export default class LwcWireParameter extends LightningElement {
    enteredValue = '';
    keywordJS = '';

    @wire(getAccountByKeyword, {keyword: '$keywordJS'})
    accounts;

    handleSearchKeyword(event){
        this.enteredValue = event.detail.value;
        console.log('Entered value: ', this.enteredValue);

    }

    handleGetAccountsByKeyword(){
        this.keywordJS = this.enteredValue;
    }
}