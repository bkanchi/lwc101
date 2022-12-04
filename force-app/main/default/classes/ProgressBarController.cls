public with sharing class ProgressBarController {
    public ProgressBarController() {

    }

    @AuraEnabled
    public static list<Approval_Step__c> getProgressStatus(String accountId){
        list<Approval_Step__c> stepsList = null;
        try {
            stepsList = [select id, name,step_no__c, account__c from Approval_Step__c where account__c =:accountId order by step_no__c ];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return stepsList;
    }
}