@isTest
public class GenericLookupControllerTest {
	
    @isTest
    static void fetchRecordsTest1() {
        Account acc = new Account();
        acc.Name = 'Test Account';
        acc.Phone = '123456789';
        acc.Type = 'Prospect';
        insert acc;
        
        List<GenericLookupController.RecordsData> result = GenericLookupController.fetchRecords('Account', 'Name', 'Test', '');
        System.assertEquals(result != null, true);
    }
    
    @isTest
    static void fetchRecordsTest2() {
        Account acc = new Account();
        acc.Name = 'Test Account';
        acc.Phone = '123456789';
        acc.Type = 'Prospect';
        insert acc;
        
        List<GenericLookupController.RecordsData> result = GenericLookupController.fetchRecords('Account', 'Name', 'Test', acc.Id);
        System.assertEquals(result.size(), 1);
    }
    
    @isTest
    static void fetchRecordsNegativeTest() {
        try {
        	List<GenericLookupController.RecordsData> result = GenericLookupController.fetchRecords('', 'Name', 'Test', '');
        } catch(Exception ex) {
            System.assertNotEquals(ex.getMessage(), NULL);
        }
    }
}