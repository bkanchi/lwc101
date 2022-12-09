public with sharing class ContactTriggerHelper {
     //public class applicationException extends Exception {}


    public static void updateConNameStrOnAccount(List<Contact> contactList, Map<Id,Contact> oldContactMap ){
        try {
            // Create a Set of AccountIds from the New or Updated contacts
             
            Set<String> accountIdSet = new Set<String>(); // Used to fetch the Related all the contacts
            for(contact con: contactList){
                Contact oldCon = null;
                // Check for updated Contact
                if(oldContactMap != null && oldContactMap.containsKey(con.Id)){
                    oldCon = oldContactMap.get(con.Id);
                }
                // Prepare the set of account Ids from new and updated Contacts
                if(con.AccountId != null && ( oldCon == null || (oldCon != null && oldCon.FirstName != con.FirstName))){
                    accountIdSet.add(con.AccountId);
                }
            }
            
            // Update Accounts
            List<Account> accListToUpdate = new List<Account>();
            for(Account acc: [Select id,Contact_First_Names__c, (select id, firstName from Contacts where firstname != null) from Account where Id IN: accountIdSet]){
                //acc.Contact_First_Names__c = '';
                List<String> nameString = new List<String>();
                for(Contact con: acc.Contacts){
                   // acc.Contact_First_Names__c += con.FirstName+',';
                    nameString.add(con.FirstName);
                }
                //System.debug('================='+string.join(nameString,',').removeEnd(','));
                //acc.Contact_First_Names__c = acc.Contact_First_Names__c.removeEnd(',');
                acc.Contact_First_Names__c = string.join(nameString,', ').removeEnd(',');
                accListToUpdate.add(acc);
            }
            update accListToUpdate;
        } catch(exception ex){ // log the Exception
            System.debug(ex.getMessage() + ex.getStackTraceString());
            //throw new applicationException(ex.getMessage());
        }
        
        
    }
}