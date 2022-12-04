({
    getRelatedEnqueries : function(cmp, event) {
        var action1 = cmp.get("c.getEnqList");
        action1.setParams({ oppId : cmp.get("v.recordId") });
        action1.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                cmp.set("v.enqList",response.getReturnValue());
                console.log(response.getReturnValue());
            }else if (state === "ERROR") {
                var errors = response.getError();
                console.log(errors);
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Error!",
                    "message": "Error Message:"+errors[0].message
                });
                toastEvent.fire();
            }
        });
        $A.enqueueAction(action1);
    },
    
})