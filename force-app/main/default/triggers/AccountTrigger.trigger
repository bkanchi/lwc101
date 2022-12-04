trigger AccountTrigger on Account (before insert, before update) {
    
    string userEmail = [select id,email from User where id=:userinfo.getUserId()].email;
    Id emea = Schema.SObjectType.Account.getRecordTypeInfosByName().get('EMEA').getRecordTypeId();
    Id apac = Schema.SObjectType.Account.getRecordTypeInfosByName().get('APAC').getRecordTypeId();
    system.debug('=======================>>>'+userEmail);
    system.debug('=============emea==========>>>'+emea);
    system.debug('=============apac==========>>>'+apac);
    for(account acc: trigger.new){
        if(userEmail.contains('bhanu')){
         //   acc.recordTypeId = apac;
        } else {
         //    acc.recordTypeId = emea;
        }
    }
}