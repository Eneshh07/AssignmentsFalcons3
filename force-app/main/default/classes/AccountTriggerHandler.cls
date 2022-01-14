
public with sharing class AccountTriggerHandler {
    /*
    
// 1.When Acc is created if Rating is Hot then Acc Type is Required.
    public static void validateAccountBeforeInsert(List<Account>accList) {

        for (Account eachAcc : accList) {
            
            if (eachAcc.rating == 'Hot' && eachAcc.Type == null) {
                eachAcc.addError('Account Type is Required');
                
            }
        }

    
        
    }

   


// 2.When Acc is Created then create contact under it with acc name.

    public static void createContactInAccount(List<Account>accList) {
        List<Contact> contactList = new List<Contact>();
    
            for (Account eachAcc :accList) {
                
                Contact c = new Contact();
                c.lastName = eachAcc.name;
                c.AccountId = eachAcc.Id;
                contactList.add(c);
            }
            if(contactList.size()>0)
            insert contactList;
    }




*/



}











