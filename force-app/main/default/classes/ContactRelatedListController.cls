public class ContactRelatedListController {     

    public List<contact> contacts{get;set;} 

    public Account accounts {get;set;} 

    public Account acc {get;set;} 

     

    //Constructor 

    public ContactRelatedListController(ApexPages.StandardController controller) { 

        acc = (account)controller.getRecord();      

        accounts = [SELECT id FROM account WHERE id=: acc.id LIMIT 1]; 

        contacts = [SELECT id,Name, lastName, mobilephone, email FROM contact WHERE accountid = :accounts.id ORDER BY Name];     

} 

    //This method is to create a new contact while clicking on the Add contact button 

    public pageReference newContact(){  

        pageReference pageRef = new pageReference(URL.getSalesforceBaseUrl().toExternalForm() + '/003/e?&retURL=' + accounts.id);  

        return pageRef; 

    } 

    //This method is to edit the existing contact record while clicking the Edit link 

    public pageReference editContact(){  

        String contactId = Apexpages.currentpage().getParameters().get('contactId');  

        pageReference pageRef = new pageReference(URL.getSalesforceBaseUrl().toExternalForm() + '/' + contactId + '/e?retURL=' + accounts.id);  

        return pageRef;  

    }    


 //This method is to delete the contact record while clicking the Del link 

    public pageReference deleteContact(){  

        String contactId = Apexpages.currentpage().getParameters().get('contactId');  
		system.debug('=========================='+contactId);

        contact contactList = [SELECT Id FROM contact WHERE id = : contactId LIMIT 1]; 
		system.debug('=========================='+contactList);
        delete contactList; 

        String baseUrl = URL.getSalesforceBaseUrl().toExternalForm(); 
		system.debug('=========baseUrl================='+baseUrl);

        PageReference redirectPage = new PageReference(baseUrl+'/'+accounts.id); 

        return redirectPage;  

    }   

}