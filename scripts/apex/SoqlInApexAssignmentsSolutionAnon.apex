List<Account> accountList = SOQLinApexAssignmentSolution.fetchAccount('Customer - Direct');
system.debug('accountList ' + accountList);
SOQLinApexAssignmentSolution.fetchOpportunties('Closed Won');
SOQLinApexAssignmentSolution.fetchOpportunties('Closed Won','Web');
//QUE4
// List<Account> accList = SOQLinApexAssignmentSolution.accountsWithContacts();
// for(Account acc : accList){
//     system.debug(acc.Name + '---->>' + acc.Contacts);
// }

//========================================================
//QUE5 approach 1
//prepare method which will return all the accounts for which at least contact is present

List<Account> accList = SOQLinApexAssignmentSolution.accountsWithContacts();
List<Account> accountsWithHaveAtleastOneContact = new List<Account>();
/*
for(Account acc : accList){
    if(acc.contacts.size()>0){
        accountsWithHaveAtleastOneContact.add(acc);
    }
}
for (Account acc : accountsWithHaveAtleastOneContact) {
    system.debug(acc.Name + '---->>' + acc.Contacts);
}
*/

//Approach3
accountsWithHaveAtleastOneContact = SOQLinApexAssignmentSolution.accountsWithatLeastOneContact1();
for (Account acc : accountsWithHaveAtleastOneContact) {
    system.debug(acc);
}

//QUE6

List<Account> accountsWithHaveAtleastOneOpp = new List<Account>();
accountsWithHaveAtleastOneOpp = SOQLinApexAssignmentSolution.accountsWithatLeastOneOpp('Closed Won');
for (Account acc : accountsWithHaveAtleastOneOpp) {
    system.debug(acc);
}


//QUE7
List<AggregateResult> oppsSumList = SOQLinApexAssignmentSolution.oppsSum();
system.debug('oppsSumList ---> ' + oppsSumList);