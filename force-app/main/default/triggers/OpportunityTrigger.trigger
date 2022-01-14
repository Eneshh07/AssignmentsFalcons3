trigger OpportunityTrigger on Opportunity (before insert,after insert,before update,after update) {


    if (trigger.isInsert && trigger.isAfter)  {
        
        OpportunityTriggerHandler.createTaskInOpportunity(trigger.new);
       
    }
}
