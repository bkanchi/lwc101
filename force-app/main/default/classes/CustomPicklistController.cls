public class CustomPicklistController {
    List<Account> accounts;
    public Account accc{get;set;}
    public List<SelectOption> picklists;
        public string searchstring{get;set;}
    public string selectedValue {get;set;}
    


	public List<Account> getAccounts() {
		if(accounts == null) accounts = [SELECT Name FROM Account LIMIT 10];
		return accounts;
	}
    public List<SelectOption> getAccounts2() {
		 
        picklists = new List<SelectOption>();
        
        Schema.DescribeFieldResult fieldResult = Account.type.getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        for( Schema.PicklistEntry pickListVal : ple){
            picklists.add(new SelectOption(pickListVal.getLabel(),pickListVal.getValue()));
        }
        System.debug('============='+picklists);
        return picklists;
    
	}
    public void searchResult(){
        system.debug('selectedValue==============='+selectedValue);
        searchstring = selectedValue;
    }

}