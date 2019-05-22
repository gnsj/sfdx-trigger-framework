public with sharing class UtilityClass {
    
    private static Boolean triggerEnabled = true;

    public static void enableTrigger() {
        triggerEnabled = true;
    }
    
    public static void disableTrigger() {
        triggerEnabled = false;
    }
    
    public static Boolean isTriggerEnabled() {
        return triggerEnabled;
    }
    
    public static void insertTriggerDisabled(SObject obj) {
        disableTrigger();
        Database.insert(obj);
        enableTrigger();        
    }
    
    public static void updateTriggerDisabled(SObject obj) {
        disableTrigger();
        Database.update(obj);
        enableTrigger();        
    }
    
    public static void deleteTriggerDisabled(SObject obj) {
        disableTrigger();
        Database.delete(obj);
        enableTrigger();        
    }
    
    public static void insertTriggerDisabled(List<SObject> obj) {
        disableTrigger();
        Database.insert(obj);
        enableTrigger();
    }
    
    public static void updateTriggerDisabled(List<SObject> obj) {
        disableTrigger();
        Database.update(obj);
        enableTrigger();
    }
    
    public static void deleteTriggerDisabled(List<SObject> obj) {
        disableTrigger();
        Database.delete(obj);
        enableTrigger();
    }
}
