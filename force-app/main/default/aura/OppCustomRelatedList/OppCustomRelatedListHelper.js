({
    doInitHelper : function(component, helper, recordId, objectName, fieldsName, refFields, refLabels, refObjList) {
        var isEditable = component.get('v.isEditable');
        var action = component.get('c.fetchRecords');
        console.log('===============result=============');
        console.log(refFields);
        console.log(refLabels);
        action.setParams({
            'parentRecordId' : recordId,
            'sObjectName' : objectName,
            'fieldsList' : fieldsName,
            'isEdit' : component.get('v.isEditable'),
            'rFields' : refFields,
            'rLabels' : refLabels
        });
        action.setCallback(this,function(response){
            var result = response.getReturnValue();
            console.log('===============result=============');
            console.log(result);
            if(response.getState() === 'SUCCESS') {
                if(!$A.util.isEmpty(result)) {
                    var records = [];
                    var fieldToDTMap = new Map();
                    var fieldToLDTMap = new Map();
                    var fieldToEditMap = new Map();
                    var fieldToPicklistValMap = new Map();
                    for(var j = 0; j < result.fieldsList.length; j++) {
                        fieldToEditMap.set(result.fieldsList[j]['value'], isEditable ? result.fieldsList[j]['isEditable'] : false);
                        fieldToDTMap.set(result.fieldsList[j]['value'], result.fieldsList[j]['dataType']);
                        fieldToLDTMap.set(result.fieldsList[j]['value'], result.fieldsList[j]['ltngType']);
                        if(result.fieldsList[j]['ltngType'] == 'picklist') {
                            fieldToPicklistValMap.set(result.fieldsList[j]['value'], result.fieldsList[j]['picklistValues']);
                             if(result.fieldsList[j]['value'] == 'StageName'){
                                component.set('v.statusFilters', result.fieldsList[j]['picklistValues']);
                            }
                        }
                    }
                    for(var i = 0; i < result.recordList.length; i++) {
                        var cell = [];
                        for(var j = 0; j < result.fieldsList.length; j++) {
                            var value = '';
                            var referId = '';
                            var fieldAPI = result.fieldsList[j]['value'];
                            for(var key in result.recordList[i]) {
                                if(key == fieldAPI) {
                                    console.log(result.fieldsList[j]);
                                    
                                    if(result.fieldsList[j]['dataType'] == 'TIME') {
                                        value = helper.convertTime(result.recordList[i][key]);
                                    } else if(result.fieldsList[j]['dataType'] == 'REFERENCE') {
                                        for(var k in result.recordList[i]){
                                            if(result.recordList[i][key] == result.recordList[i][k]['Id']) {
                                                console.log(result.recordList[i][k]);
                                                
                                                value = result.recordList[i][k]['Name'];
                                                referId = result.recordList[i][k]['Id']; 
                                            }
                                        }
                                    } else {
                                        value = result.recordList[i][key];
                                    }
                                }
                            }
                            //console.log(fieldToLDTMap);
                            if(fieldToLDTMap.has(result.fieldsList[j]['value']))
                                cell.push({ 'label':fieldAPI,'value':value, 'valueRefId':referId,'isEdit':fieldToEditMap.get(fieldAPI), 'dataType':result.fieldsList[j]['dataType'], 'ltngType': result.fieldsList[j]['ltngType'], 'picklistOptions': fieldToPicklistValMap.get(fieldAPI) });
                            
                            // cell.push({ 'label':fieldAPI,'value':value, 'valueRefId':referId,'isEdit':fieldToEditMap.get(fieldAPI), 'dataType':result.fieldsList[j]['dataType'], 'ltngType': result.fieldsList[j]['ltngType'], 'picklistOptions': fieldToPicklistValMap.get(fieldAPI) });
                            
                        }
                        records.push({'Id': result.recordList[i].Id, 'record':cell});
                    }
                    component.set('v.fields', result.fieldsList);
                    component.set('v.records', JSON.parse(JSON.stringify(records)));
                    component.set('v.recordsCopy', JSON.parse(JSON.stringify(records)));
                    console.log('===============filter values=============');
            console.log(component.get('v.statusFilters'));
                }
            } else {
                console.log(response.getError());
                var errors = response.getError();
                if (errors && errors[0] && errors[0].message) {
                    helper.showToast('error', errors[0].message);
                }
            }
        });
        $A.enqueueAction(action);
    },
    
    saveRowHelper : function(component, recordId, recordObj) {
        var self = this;
        
        var recordData = {};
        recordData['Id'] = recordId;
        console.log('===========================');
        for(var i = 0; i < recordObj.record.length; i++) {
            console.log(recordObj.record);
            if(recordObj.record[i].isEdit){
                console.log('===============value============'+recordObj.record[i].value);
                if(recordObj.record[i].dataType == 'REFERENCE'){
                    recordData[recordObj.record[i].label] = recordObj.record[i].valueRefId;
                } else {
                    recordData[recordObj.record[i].label] = recordObj.record[i].value;

                }
                
            }
        }
        var action = component.get('c.saveRecord');
        action.setParams({
            'objectName' : component.get('v.objectName'),
            'recordData' : JSON.stringify(recordData)
        });
        action.setCallback(this,function(response) {
            if(response.getState() === 'SUCCESS') {
                self.showToast('Success', 'Record Updated Successfully');
                for(var i = 0; i < recordObj.record.length; i++) {
                    
                    if(recordObj.record[i].dataType == 'DATETIME') {
                        recordObj.record[i].value = $A.localizationService.formatDate(recordObj.record[i].value, "yyyy-MM-ddTHH:mm:ss.000Z");
                    }
                  
                }
                
                var recordsCopy = component.get('v.recordsCopy');
                console.log(recordsCopy);
                var rowIndex = recordsCopy.findIndex(x => x.Id === recordId);
                if (rowIndex != -1) {
                    recordObj.editMode = false;
                    recordsCopy[rowIndex] = JSON.parse(JSON.stringify(recordObj));
                }
                console.log(recordsCopy);
                component.set('v.recordsCopy', recordsCopy);
                
                var records = component.get('v.records');
                var index = records.findIndex(x => x.Id === recordId);
                if (index != -1)
                    records[index].editMode = false;
                console.log('----records[index].editMode-----'+records[index].editMode);
                component.set('v.records', records);
            } else {
                console.log(response.getError());
                var errors = response.getError();
                if (errors && errors[0] && errors[0].message) {
                    self.showToast('error', errors[0].message);
                }
            }
        });
        $A.enqueueAction(action);
    },
    
    convertTime : function(time) {
        var convertedTime = time/3600000;
        var hour = convertedTime.toString().split('.')[0];
        var minute = $A.util.isEmpty(convertedTime.toString().split('.')[1]) ? '00' : (Number(convertedTime.toString().split('.')[1]) * 60 ) / 100;
        return ((hour.length == 1) ? '0' + hour : hour) +':'+ ((minute.toString().length == 1) ? minute + '0' : minute) +':00.000Z';
    },
    
    showToast : function(type, message) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({ "type": type, "message": message }).fire();
    }
})