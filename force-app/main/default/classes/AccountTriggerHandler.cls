public with sharing class AccountTriggerHandler {

    private static 	boolean isBeforeRecursive = false;
    private static 	boolean isAfterRecursive = false;
    
    public Map<Id,Account> newRecordMap;
    public Map<Id,Account> oldRecordMap;
    public List<Account> newRecordList;
    public List<Account> oldRecordList;

    public AccountTriggerHandler() {
        this.newRecordMap = new Map<Id,Account>();
        this.oldRecordMap = new Map<Id,Account>();
        this.newRecordList = new List<Account>();
        this.oldRecordList = new List<Account>();
    }

    //public void onBeforeInsert() {}
    //public void onBeforeUpdate() {}
    //public void onBeforeDelete() {}
    public void onAfterInsert() {
        if(!isAfterRecursive){
            isAfterRecursive = true;
            AccountEnrichFields.enrichEmailField(newRecordList);
        }
    }
    //public void onAfterUpdate() {}
    //public void onAfterDelete() {}
}
