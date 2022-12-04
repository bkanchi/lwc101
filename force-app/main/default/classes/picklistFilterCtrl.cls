public class picklistFilterCtrl {
    
    
    public String selectedCountry2{get;set;}
    public List<String> selectedCategories { get; set; }
    public List<String> searchText { get; set; }
    public Map<String,String> countryMap { get; set; }
    public string searchstring{get;set;}
    public string searchstr{get;set;}
    public List<Account> accounts;
    public string selectedCountry {get;set;}
    public list<SelectOption> picklists {get;set;}
    public list<SelectOption> picklistsBackup {get;set;}
    public Map<String,String> picklistMap {get;set;}
    public Map<String,String> picklistMapBackup {get;set;}
    
    
    public picklistFilterCtrl(){
        
        countryMap = new Map<String,String>();
        countryMap.put('India','India');
        countryMap.put('USA','US');
        countryMap.put('France','France');
        picklistMap = new Map<String,String>();
        picklistMapBackup = new Map<String,String>();
        
        picklists = new List<SelectOption>();
        picklistsBackup = new List<SelectOption>();
        
        Schema.DescribeFieldResult fieldResult = Account.type.getDescribe();
        List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        picklists.add(new SelectOption('',''));
        for( Schema.PicklistEntry pickListVal : ple){
            picklists.add(new SelectOption(pickListVal.getLabel(),pickListVal.getValue()));
            picklistMap.put(pickListVal.getLabel(),pickListVal.getValue());
            picklistMapBackup.put(pickListVal.getLabel(),pickListVal.getValue());
        }
        picklistsBackup.addAll(picklists);
        System.debug('============='+picklists);
    }
    
    public List<Account> getAccounts() {
        if(accounts == null) accounts = [SELECT Name FROM Account LIMIT 10];
        return accounts;
    }
    public void searchResult2(){
        system.debug('searchstr==============='+searchstr);
        picklistMap = new Map<String, String>();
        for(String sel: picklistMapBackup.keySet()){
            if(picklistMapBackup.get(sel).contains(searchstr)){
                picklistMap.put(sel,picklistMapBackup.get(sel));
            } 
        }
        if(picklistMap.size() > 0)
           // searchstr = picklistMap;
        system.debug('picklists==============='+picklistMap);
        
        
    }
    public void searchResult(){
        system.debug('searchstring==============='+searchstring);
        
        picklists = new List<SelectOption>();
        for(SelectOption sel: picklistsBackup){
            if(sel.getvalue().contains(searchstring)){
                picklists.add(new SelectOption(sel.getLabel(),sel.getValue()));
            } 
        }
        if(picklists.size() > 0)
            selectedCountry = picklists[0].getValue();
        system.debug('picklists==============='+picklists);
        
        
    }
    
    
    
    public List<SelectOption> getCountriesOptions() {
        List<SelectOption> countryOptions = new List<SelectOption>();
        countryOptions.add(new SelectOption('','-None-'));
        countryOptions.add(new SelectOption('INDIA','India'));
        countryOptions.add(new SelectOption('USA','USA'));
        countryOptions.add(new SelectOption('United Kingdom','UK'));
        countryOptions.add(new SelectOption('Germany','Germany'));
        countryOptions.add(new SelectOption('Ireland','Ireland'));
        
        return countryOptions;
    }
    
    
    public List<SelectOption> getCategories() {
        
        List<SelectOption> categories = new List<SelectOption>();
        
        
        
        return categories;
        
    }
    public PageReference save(){
        return null;
    }
    
    
    
    
    
    
    public PageReference CurrencyGenerate() {
        System.debug('Page Refreshed:' + selectedCountry);
        return null;
    }
    
}