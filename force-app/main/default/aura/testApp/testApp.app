<aura:application extends="force:slds" >
   
  <c:OppCustomRelatedList isEditable="true"
                            recordId = "0012v00002Z1hauAAB" 
                            headerName="Opportunities"
                            objectName="Opportunity"
                            fieldsName="Name,Accountid,Account.Name,StageName,Type,Leadsource"
                            iconName="standard:contact"
                            />
     <!-- 
 <c:RecordEditFrom/>
     <c:CustomRelatedListController recordId="0012v00002Z1hauAAB"/>
    <c:CustomRelatedListController recordId="0012v00002Z1hauAAB"/>
 <c:InLineDataTable />
    <c:LookupComponent fieldLabel = "Account" 
                       objectAPIName = "Account"
                       fieldAPIName = "Name"
                       recordLimit = "5"
                       lookupIcon = "standard:contact" 
                       placeholder = "Search Account" 
                       aura:id="lookupValue" 
                       parentRecId="" 
                       Manualchildscreen="true" 
                       label="Market Child"/> -->
    <!--<c:GenericLookup objectName="Account" fieldName="Name" label="Account Name" iconName="standard:account" placeholder="Enter Value" />-->
</aura:application>