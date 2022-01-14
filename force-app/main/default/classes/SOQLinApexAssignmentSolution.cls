public with sharing class SOQLinApexAssignmentSolution {
    //prepare a ,ethod which will return the List of Accounts for a 
    //particular Type.Type should be sent as a parametr in the method
    //1
    public static List<Account> fetchAccount(string accType){
        List<Account> accountsRetrivedList = new List<Account>();
        accountsRetrivedList = [select name,Type from Account Where Type = :accType];
        return accountsRetrivedList;
    }

//2
    //print all the opportunities with stage as 'Closed Won' and make it
    //dynamic so that it should work for other stages as well

    public static void fetchOpportunties(string oppStageName){
        List<Opportunity> oppRetrivedList = new List<Opportunity>();
        oppRetrivedList = [Select Name, Amount from Opportunity where StageName = :oppStageName];
        system.debug('oppRetrivedList    -->' +  oppRetrivedList);
    }

    //3
//Find all the opportunities which hasLead Source as 'Web' 
//and Stage as 'Closed Lost' Make it dynamic so that it should work for other stages and Lead sources as well.

    public static void fetchOpportunties(string oppStageName, string leadSrc){
        List<Opportunity> oppRetrivedList = new List<Opportunity>();
        oppRetrivedList = [Select Name, Amount from Opportunity where StageName = :oppStageName and LeadSource = :leadSrc];
        system.debug('oppRetrivedList    -->' +  oppRetrivedList);
    }



    //4 
    //Write the logic to fetch all the accounts along with the respective contacts

    public static list<Account> accountsWithContacts() {
        list<Account> accList = new list<Account>();
        accList = [Select Name, (select firstName, LastName from Contacts) from Account];
        return accList;
    }
    //5 
    //prepare method which will return all the accounts for which at least contact is present
//Approach 2
    public static List<Account> accountsWithatLeastOneContact(){
        //get the account Ids from all the contacts in the org
        List<Contact> contactsList = new List<Contact>();
        contactsList = [Select AccountId from Contact];
        Set<Id> accntIdsSet =  new Set<Id>();
       for (Contact con : contactsList) {
           accntIdsSet.add(con.AccountId);
       }
       List<Account> accountsList = new List<Account>();
       accountsList = [Select Id, Name from Account Where Id In : accntIdsSet];
       return accountsList;
    }

//APPROACH 3

public static List<Account> accountsWithatLeastOneContact1(){
    //get the account Ids from all the contacts in the org
   List<Account> accountsList = new List<Account>();
   accountsList = [Select Id, Name from Account Where Id In (select AccountId from Contact)];
   return accountsList;
}

//QUE6
//prepare method which will return all the accounts for which at least a closed won opportunity is present.
//Make it dynamic if we want to bring opportunity of other stageNames

  public static List<Account> accountsWithatLeastOneOpp(string oppStageName){
      List<Account> accountsList = new List<Account>();
      accountsList = [Select Id, Name from Account Where Id In (Select AccountId from opportunity where StageName = : oppStageName)];
      return accountsList;
  }


  //QUE7
  public static List<AggregateResult> oppsSum(){
      List<AggregateResult> oppsSumList = new List<AggregateResult>();
      oppsSumList = [Select Sum(Amount), StageName from Opportunity Group by StageName];
      return oppsSumList;
  }

}
