import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { deleteRecord } from 'lightning/uiRecordApi';

export default class LdsDeleteRecord extends NavigationMixin(LightningElement) {
    @api recordId;

    handleDeleteOpp() {
        deleteRecord(this.recordId)
            .then(() => {
                alert('Record deleted');
                this.navigateToListView();
            })
            .catch(error => {
                alert('Error in deleting: '+JSON.stringify(error));
            })
    }

    navigateToListView() {
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Opportunity',
                actionName: 'list'
            }
        });
    }
}