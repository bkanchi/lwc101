({
    init: function (cmp, event, helper) {
        cmp.set('v.columns',[
            {label: 'Id', fieldName: 'Id', type: 'text' , editable: true},
            {label: 'Name', fieldName: 'Name', type: 'text' ,editable: true},
            {label: 'Annual Revenue', fieldName: 'AnnualRevenue', type: 'currency' ,editable: true},
            {label: 'Description', fieldName: 'Description', type: 'text' ,editable: true},
            {label: 'Number Of Employees', fieldName: 'NumberOfEmployees', type: 'number' ,editable: true},
            {label: 'Parent Account', fieldName: 'Parent.Name', type: 'text' ,editable: true}
           /* {label: 'Industry', fieldName: 'Industry', type: 'text' ,editable: true},
            {label: 'Rating', fieldName: 'Rating', type: 'text' ,editable: true},
            {label: 'Phone', fieldName: 'Phone', type: 'phone' ,editable: true } */
        ]);
        helper.fetchData(cmp,event, helper);
    },
    handleSaveEdition: function (cmp, event, helper) {
        var draftValues = event.getParam('draftValues');
        console.log(draftValues);
        var action = cmp.get("c.updateAccount");
        action.setParams({"acc" : draftValues});
        action.setCallback(this, function(response) {
            var state = response.getState();
             if (state === "SUCCESS") {
               /* var toastEvent1 = $A.get("e.force:showToast");
                toastEvent1.setParams({
                    "title": "Success!",
                    "message": "Updated Successfully"
                });
                toastEvent1.fire();*/
            }else if (state === "ERROR") {
                var errors = response.getError();
                console.log(errors);
               /* var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Error!",
                    "message": "Error Message:"+errors[0].message
                });
                toastEvent.fire();*/
            }
            
        });
        $A.enqueueAction(action);
        
    },
})