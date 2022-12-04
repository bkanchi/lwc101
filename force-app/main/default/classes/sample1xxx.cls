public with sharing class sample1xxx {

  public list<selectoption> nameOfObjects{get;set;}
  public map<string,schema.SobjectType> mapOfTokens{get;set;}
  public List<String> listToHoldNames{get;set;}
  public string selectedObject{get;set;}
  
  public Sobject objectName{get;set;}
  public List<Sobject> objectNames{get;set;}
  public List<Sobject> objects{get;set;}
  public List<String> fields{get;set;}
  public String query{get;set;}
  public List<string> newNameOfFields{get;set;}
  
  public sample1xxx(){

  mapOfTokens=Schema.getGlobalDescribe();
  listToHoldNames= new list<string>();
  nameOfObjects= new list<selectoption>();
  listToHoldNames.addAll(mapOfTokens.keyset());
  listToHoldNames.sort();
  nameOfObjects.add(new selectoption('None','--None--'));
  for(string s:listToHoldNames){
  nameOfObjects.add(new selectoption(s,s));
  newNameOfFields= new List<String>();
  }
  fields = new  List<String>();
  objectNames=new List<Sobject>();
  }
  
  public pagereference showFields(){
  
  system.debug('The selectedObject is :'+selectedObject);
  schema.describeSobjectResult dsr=mapOfTokens.get(selectedObject).getDescribe();
  Map<string,Schema.SobjectField> mapOfFields=dsr.fields.getmap();
  list<String> nameOfFields= new List<String>();
  nameOfFields.addAll(mapOfFields.keySet());
  for(String so:nameOfFields){
  schema.describeFieldResult arbDfr=mapOfFields.get(so).getDescribe();
  if(arbDfr.Createable==true){
  newNameOfFields.add(so);
  }
  }
  schema.SobjectType obj= schema.getGlobalDescribe().get(selectedObject);
  system.debug('obj is :'+obj);
  objectName=obj.newSobject();
  objectNames.add(objectName);
  system.debug('Object Name is :'+objectName);
  return null;
  
  }
  
  public pageReference save(){
  insert objectNames;
  return null;
  
  }
  
  public pageReference cancel(){
  pageReference pg=new PageReference(ApexPages.currentPage().getURL());
  pg.setRedirect(true);
  return pg;
  }
  
}