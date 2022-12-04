({
    handleSearchRecords : function (component, event, helper) {
        var searchText = component.find("searchinput").get("v.value");
        if(searchText){
            helper.searchRecord(component,searchText);
        }else{
            helper.searchRecord(component, '');
            var selectedRecordId = event.getParam("recordId");
            var selectedrecordName = event.getParam("recordName");
            component.set("v.selectedRecordId", undefined);
        	component.set("v.selectedRecordName",undefined);
        }
    },
    
    
     
    handleLookupSelectEvent : function (component, event, helper) {
        var selectedRecordId = event.getParam("recordId");
        var selectedrecordName = event.getParam("recordName");
        component.set("v.selectedRecordId", selectedRecordId);
        component.set("v.selectedRecordName", selectedrecordName);
        helper.toggleLookupList(component, false, 'slds-combobox-lookup', 'slds-is-open');
    },
     
    hideList :function (component,event,helper) {
        window.setTimeout(
            $A.getCallback(function() {
                if (component.isValid()) {
                    helper.toggleLookupList(component, false, 'slds-combobox-lookup','slds-is-open');
                }
            }), 200
        );
    }
})