public class lookupController {
    @AuraEnabled
    public static List<sObject> searchRecord(String objectAPIName, String fieldAPIName,List<String> moreFields, String searchText,Integer recordLimit){
        List<sObject> objectList =  new List<sObject>();
        searchText='\'%' + String.escapeSingleQuotes(searchText.trim()) + '%\'';
        String soqlQuery = 'SELECT Id, Name';
        if(!moreFields.isEmpty()){
            soqlQuery = soqlQuery + ',' + String.join(moreFields, ',') ;
        }
        soqlQuery = soqlQuery + ' FROM ' + objectAPIName + ' WHERE ' +
            + fieldAPIName +' LIKE '+ searchText + ' LIMIT '+ recordLimit;
        objectList = Database.query(soqlQuery);
        System.debug('objectList '+objectList);
        return objectList;
    }
}