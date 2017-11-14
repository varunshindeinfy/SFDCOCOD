public class OCODAccountControllerExtension {

    public String PlanId{get; set;}
    public List<Task> GCTask{get; set;}
    public OCODAccountControllerExtension(ApexPages.StandardController stdController)
    {}
    
    public String GetString()
    {
        return 'Hello';
    }
    
    Public PageReference CallGC(){
        System.debug('Plan:' + PlanId);
        GCTask = [Select Id,OwnerId,whoId,whatId,Subject,ActivityDate,Priority,Status,What.Name from Task where whatid = :PlanId];     
        return null;
    }
}