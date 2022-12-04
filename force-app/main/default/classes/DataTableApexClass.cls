public class DataTableApexClass {
    @AuraEnabled
    public static List<Account> getAllAccounts(){
        return [Select Id,Name ,AnnualRevenue,Description,NumberOfEmployees,Industry,Rating,Phone,ParentId,Parent.Name from Account] ; 
        
    }
    @AuraEnabled
    public static void updateAccount(List<Account> acc ){
        System.debug('-------------'+acc);
        System.debug('====================');
        update acc;
    }

    public static void getData(){
       //return null;
    }
    
}