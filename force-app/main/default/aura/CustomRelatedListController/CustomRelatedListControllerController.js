({
    doInit : function(component, event, helper) {
        helper.getRelatedEnqueries(component, event);
    },
    handleClick : function(component, event, helper) {
        console.log(component.get("v.enqList"));
    },
    tdClick: function(component, event, helper){
        console.log('TD click -------'+event.currentTarget.dataset.label);
        console.log('TD click -------'+event.currentTarget.dataset.name);
        component.set("v.editId",event.currentTarget.dataset.label);
        component.set("v.editName",event.currentTarget.dataset.name);
        
    },
    onCancel: function(component, event, helper){
        component.set("v.editId",event.currentTarget.dataset.label);
        component.set("v.editName",event.currentTarget.dataset.name);
        helper.getRelatedEnqueries(component, event);
        
    },
    allSelected : function(component, event, helper) {
        console.log(component.get("v.enqList"));
        var selected = component.find("isSelect");
        var allData = component.get("v.enqList");
        var selctedCount = [];
        console.log(selected);
        if(typeof selected != 'undefined'){
            for (var i = 0; i < selected.length; i++) {
                if (selected[i].get("v.value") == true) {
                    selctedCount.push(selected[i]);
                }
            }
        }
        
        if(allData.length === selctedCount.length ){
            component.set("v.isAllSelected",true);
        } else {
            component.set("v.isAllSelected",false);
        }
    },
    selectAll: function(cmp, event, helper){
        var selValue =  cmp.get("v.isAllSelected");
        var allData = cmp.get("v.enqList");
        var isSelect = cmp.find("isSelect");
        if(typeof isSelect != 'undefined'){
            if(selValue == true){
                for(var i=0; i<isSelect.length; i++){
                    isSelect[i].set("v.value",true);
                }
            } else {
                for(var i=0; i<isSelect.length; i++){
                    isSelect[i].set("v.value",false);
                }
                
            }
        }
        console.log(allData);
    },
})