import { LightningElement } from 'lwc';
import templateOne from './templateOne.html';
import templateTwo from './templateTwo.html';

export default class LwcRender extends LightningElement {


    templateOneHtml=true;

    render(){
        return this.templateOneHtml ? templateOne : templateTwo;
    }

    handleTemplateChange(event){
        this.templateOneHtml = !this.templateOneHtml;
    }
}