
// 3.Create Task on Opportunity whenever Opp is over  $100,000.
// Subject:Gift Box Promo
// Description: Send Gift Box next Day
// Priority : High

public with sharing class OpportunityTriggerHandler {
  

    public static void createTaskInOpportunity(List<Opportunity> oppList) {
        
        List<Task> taskList = new List<Task>();
        for (Opportunity opp : oppList) {
            
            if (opp.Amount>100000) {
                Task t = new Task();
                t.Subject = 'Gist Box Promo';
                t.Description = 'Send it to customer next day';
                t.Priority = 'High';
                t.WhatId = opp.id;
                
               taskList.add(t);
            }
            insert taskList;
        }
    }
}
