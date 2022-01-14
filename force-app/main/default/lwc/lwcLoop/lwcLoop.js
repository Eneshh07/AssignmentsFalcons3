import { LightningElement,track } from 'lwc';

export default class LwcLoop extends LightningElement {
    @track contacts = [
        {
            FirstName: 'Sha',
            LastName: 'Rejepov',
            ContactId: 1
        },
        {
            FirstName: 'Bobby',
            LastName: 'Smurda',
            ContactId: 2
        },
        {
            FirstName: 'Danny',
            LastName: 'Devite',
            ContactId: 3
        },
        {
            FirstName: 'Nick',
            LastName: 'Jonas',
            ContactId: 4
        },
        {
            FirstName: 'Roger',
            LastName: 'Redere',
            ContactId: 5
        }
    ];

}