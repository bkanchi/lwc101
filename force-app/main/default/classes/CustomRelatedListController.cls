public class CustomRelatedListController {
    
    
    /*  @auraEnabled
public static List<APAC_Project_Enquiries__c> getEnqList(String oppId){
List<APAC_Project_Enquiries__c> enqList = [Select id, Name, APAC_Status__c,APAC_Candidate__c, 
APAC_Enquiry_Contact__c,Enquiry_Primary_Campaign__c 
from APAC_Project_Enquiries__c 
where Enquiry_Opportunity__c=:oppId ];
return enqList;
}*/
    
    @auraEnabled
    public static List<OpportunityWrapper> getEnqList(String oppId){
        List<OpportunityWrapper> wrapList = new List<OpportunityWrapper>();
        for(Opportunity op: [Select id, Name,ContactId,OrderNumber__c,account.name, accountId
                             from Opportunity 
                             where accountId=:oppId order by createddate desc])
        {
            OpportunityWrapper wrp = new OpportunityWrapper();
            wrp.selected  = false;
            wrp.opp  = op;
            wrapList.add(wrp);
        }
        return wrapList;
    }
    
    
    public class OpportunityWrapper{
        @auraEnabled public boolean selected {get;set;}
        @auraEnabled public String editField {get;set;}
        @auraEnabled public Opportunity opp {get;set;}
    }
    
}