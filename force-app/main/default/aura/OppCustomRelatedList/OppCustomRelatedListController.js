({
    doInit : function(component, event, helper) {
        var objectName = component.get('v.objectName');
        var fieldsName = component.get('v.fieldsName');
        var recordId = component.get('v.recordId');
        var refFields = component.get('v.referenceFieldMap'); 
        var refLabels = component.get('v.referenceLabelMap'); 
        
        if(!$A.util.isEmpty(objectName) && !$A.util.isEmpty(fieldsName) && !$A.util.isEmpty(recordId)) {
            helper.doInitHelper(component, helper, recordId, objectName, fieldsName, refFields, refLabels);
        }
    },
    
    editRow: function (component, event, helper) {
        var rowId = event.getSource().get('v.name');
        var records = component.get('v.records');
        var rowIndex = records.findIndex(x => x.Id === rowId);
        if (rowIndex != -1) {
            records[rowIndex].editMode = true;
        }
        component.set('v.records', records);
    },
    
    resetRow: function (component, event, helper) {
        var rowId = event.getSource().get('v.name');
        var resetRow;
        
        var recordsCopy = component.get('v.recordsCopy');
        var rowIndex = recordsCopy.findIndex(x => x.Id === rowId);
        if (rowIndex != -1)
            resetRow = JSON.parse(JSON.stringify(recordsCopy[rowIndex]));
        
        var records = component.get('v.records');
        var index = records.findIndex(x => x.Id === rowId);
        if (index != -1)
            records[index] = resetRow;
        
        component.set('v.records', records);
    },
    
    saveRow: function (component, event, helper) {
        var recordObj;
        var recordId = event.getSource().get('v.name');
        var records = component.get('v.records');
        var index = records.findIndex(x => x.Id === recordId);
        if (index != -1)
            recordObj = records[index];
        
        console.log(recordObj);
        
        for(var i = 0; i < recordObj.record.length; i++) {
            if(recordObj.record[i].dataType == 'DATETIME') {
                recordObj.record[i].value = $A.localizationService.formatDate(recordObj.record[i].value, "yyyy-MM-dd HH:mm:ss");
            }
        }
        helper.saveRowHelper(component, recordId, recordObj);
    },
    isSelectedAll: function (component, event, helper) {
        var sel= component.find("isSelect");
        var allSel= component.get("v.isSelectedAll");
        var delList =  component.get("v.recordsToDel");
        var records = component.get('v.records');
        console.log('==========allSel============'+allSel);

        console.log(sel);
        for (var i=0; i<sel.length; i++) {
            console.log(sel[i]['checked']);
             sel[i].set("v.checked",allSel);
        }
        
    },
    
    isSelected : function(component, event, helper) {
        var sel= component.find("isSelect");
        
        var delList =  component.get("v.recordsToDel");
        console.log('==========delList============'+delList.length);
        var records = component.get('v.records');
        if(typeof selected != 'undefined'){
            for (var i=0; i<sel.length; i++) {
                console.log('===='+delList.indexOf(sel[i].get('v.value'))+'==========records='+sel[i].get('v.value')+'======='+sel[i].get('v.checked'));
                if(sel[i].get('v.checked') && delList.indexOf(sel[i].get('v.value')) === -1){
                    delList.push(sel[i].get('v.value')); 
                } 
                
            }
        }
        console.log('==========delList============'+delList.length);
        console.log('==========records============'+records.length);
        component.set("v.recordsToDel",delList);
        if(delList.length === records.length){
            component.set("v.isSelectedAll",true);
        } else {
            component.set("v.isSelectedAll",false);
        }
        
    },
    deleteSelected : function(component, event, helper) {
        var sel= component.find("isSelect");
        var delList =  component.get("v.recordsToDel");
        var delList =  component.get("v.recordsToDel");
        var objectApiName =  component.get("v.objectName");
        var delLst = [];
        console.log('==========delLst new============');
        for (var i=0; i<sel.length; i++) {
            if(sel[i].get('v.checked') ){
                delLst.push(sel[i].get('v.value')); 
            }
        }
        console.log('==========delList============'+delList.length);
                console.log('==========delLst new============'+delLst.length);
        if(delLst.length > 0){
              var action = component.get("c.deleteRecords");
        action.setParams({ recordIds : delLst,apiName : component.get("v.objectName") });
        action.setCallback(this, function(response) {
            var state = response.getState();
            console.log(response.getReturnValue());
            if (state === "SUCCESS") {
                console.log(response.getReturnValue());
                $A.get('e.force:refreshView').fire();
                helper.showToast('Success', 'Records Deleted Successfully');
            }else if (state === "ERROR") {
                var errors = response.getError();
                console.log(errors);
                helper.showToast('Error', 'Error Message:'+errors[0].message);
                /* var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Error!",
                    "message": "Error Message:"+errors[0].message
                });
                toastEvent.fire();*/
            }
        });
        $A.enqueueAction(action);
        } else {
            var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Error!",
                    "message": "No Records selected to Delete"
                });
                toastEvent.fire();
        }
      
        
    },
    handleComponentEvent: function (component, event, helper) {
        
        console.log('==========allSel============');

         var valueFromChild = event.getParam("filterValues");
        console.log(valueFromChild);
        
    }
})