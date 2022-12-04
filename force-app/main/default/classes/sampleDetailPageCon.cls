public class sampleDetailPageCon {
    private List<Opportunity> oppz;
    private Contact cntact; 
    public string oppId{get;set;}
    public sampleDetailPageCon(ApexPages.StandardController controller) {
        this.cntact= (Contact)controller.getRecord();
    }
    public List<Opportunity> getOppz()
    {
        Contact con = [Select id, Account.id FROM Contact where id = :cntact.id];
        if (con.Account == null)
            return null;
        oppz = [Select id, Name, Account.Name, CloseDate, Amount, Type from Opportunity where Account.id = :con.Account.id];
        return oppz;
    }
    
    public void deleteRecord(){
        system.debug('=======================================');
    }
}