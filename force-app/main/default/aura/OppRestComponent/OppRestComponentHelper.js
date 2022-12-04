({
    getOppInformation : function(cmp) {
        var action = cmp.get("c.displayDetails");
        action.setParams({"opId": cmp.get("v.recordId")});
        action.setCallback(this, $A.getCallback(function(response) {
            var state = response.getState();
            alert('state==='+state);
            if (state === "SUCCESS") {
                var res=response.getReturnValue();
                console.log('res=== '+JSON.stringify(res));
            }else{
                var errors = response.getError();
                var message = 'Unknown error'; // Default error message
                // Retrieve the error message sent by the server
                if (errors && Array.isArray(errors) && errors.length > 0) {
                    message = errors[0].message;
                }
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Error!",
                    "message": message,
                    "type" :"error",
                    "duration":"2000"
                });
                toastEvent.fire();
            }
        }));
        $A.enqueueAction(action);
    },
})