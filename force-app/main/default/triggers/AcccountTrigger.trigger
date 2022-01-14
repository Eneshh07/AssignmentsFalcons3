trigger AcccountTrigger on Account (before insert, after insert,before update,after update) {
//1
    if (trigger.isInsert && trigger.isBefore) {
        
        AccountTriggerHandler.validateAccountBeforeInsert(trigger.new);
    }

        //2
        if(trigger.isInsert && trigger.isAfter){

            
            AccountTriggerHandler.createContactInAccount(trigger.new);
        }

       
        

}