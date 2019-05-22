trigger AccountTrigger on SOBJECT (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    if(! UtilityClass.isTriggerEnabled() ){ return ; }
    
    AccountTriggerHandler handler = new AccountTriggerHandler();
    
    handler.newRecordList = trigger.new;
    handler.oldRecordList = trigger.old;
    handler.newRecordMap = trigger.newMap;
    handler.oldRecordMap = trigger.oldMap;
    
    if(trigger.isBefore){
        //if(trigger.isInsert){ handler.onBeforeInsert(); }
        //if(trigger.isUpdate){ handler.onBeforeUpdate(); }
        //if(trigger.isDelete){ handler.onBeforeDelete(); }
    } else if(trigger.isAfter){
        if(trigger.isInsert){ handler.onAfterInsert(); }
        //if(trigger.isUpdate){ handler.onAfterUpdate(); }
        //if(trigger.isDelete){ handler.onAfterDelete(); }
    }

}