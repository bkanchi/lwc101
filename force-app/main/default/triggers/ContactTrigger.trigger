trigger ContactTrigger on Contact (after insert, after update, after Delete) {
    
    // Insert Context
    if(Trigger.isAfter && trigger.isInsert){
        ContactTriggerHelper.updateConNameStrOnAccount(trigger.new, null);
    }
    
    //  Update Context
    if(Trigger.isAfter && trigger.isUpdate){
        ContactTriggerHelper.updateConNameStrOnAccount(trigger.new, trigger.OldMap);
    }
    //Delete Trigger Context
    if(Trigger.isAfter && trigger.isDelete){
        ContactTriggerHelper.updateConNameStrOnAccount(trigger.Old, null);
    }
    
   
    
}