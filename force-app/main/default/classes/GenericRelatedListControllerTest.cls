@isTest
public class GenericRelatedListControllerTest {
	@testSetup
    static void testData(){
        account acc = new account();
        acc.Name = 'TestAccount';
        insert acc;
        
        case cs = new case();
        cs.subject = 'case subject';
        cs.AccountId = acc.id;
        insert cs;
        
    }
    
    static testMethod void test1(){
        test.startTest();
        account acc = [select id,name from Account limit 1];
         //(String parentRecordId, String sObjectName, String fieldsList, String isEdit, Map<String, String> rFields, Map<String, String> rLabels) {
		String fieldsList = 'Subject,Type, AccountId, Account.Name ';
        Map<String, String> rFields = new Map<String, String> {'AccountId'=> 'Account.Name'};
        Map<String, String> rLabels = new Map<String, String> {'AccountId'=> 'Account Name'};
        GenericRelatedListController2.fetchRecords(acc.Id,'Case', fieldsList, 'True', rFields, rLabels);
            
        test.stopTest();
    }
    static testMethod void testDelete(){
        test.startTest();
        List<case> caseList = [select id from case ];
        List<String> idsList = new List<String> {caseList[0].Id};
        GenericRelatedListController2.deleteRecords(idsList, 'case');
            
        test.stopTest();
    }
    static testMethod void testUpdate(){
        test.startTest();
        List<case> caseList = [select id,Subject,Type, AccountId, Account.Name from case ];
        
        String updateRec = '{"Id":"'+caseList[0].Id+'","Subject":"Update Request","Type":"Electronic","AccountId":"'+caseList[0].AccountId+'"}';
        
        GenericRelatedListController2.saveRecord('Case', updateRec);
        
        test.stopTest();
    }
}