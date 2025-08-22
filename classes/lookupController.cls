public with sharing class lookupController {
    @AuraEnabled(cacheable=true)  
   public static List<sobject> findRecords(String searchKey, String objectName, String fields,String conditions) {  
     string searchText = '\'' + String.escapeSingleQuotes(searchKey) + '%\'';  
     return Database.query('Select '+fields +' From '+objectName+' WHERE Name LIKE '+searchText+' '+conditions);  
   }  
}