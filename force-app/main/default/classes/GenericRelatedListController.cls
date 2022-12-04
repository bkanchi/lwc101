public class GenericRelatedListController {
    
    @AuraEnabled
    public static ReturnWrapper fetchRecords(String parentRecordId, String sObjectName, String fieldsList, String isEdit, Map<String, String> rFields, Map<String, String> rLabels) {
        ReturnWrapper result = new ReturnWrapper();
        List<FieldWrapper> fieldsWP = new List<FieldWrapper>();
        try {
            system.debug('======fieldsList========'+fieldsList);
            system.debug('======rFields========'+rFields);
            system.debug('======rLabels========'+rLabels);
            Set<String> fields = new Set<String>(fieldsList.split(','));
            system.debug('======fields========'+fields);
            
            Set<String> objFields = new Set<String>();
            Schema.SObjectType objectName = Schema.getGlobalDescribe().get(sObjectName);
            Map<String,Schema.SObjectField> sObjectFieldMap = objectName.getDescribe().fields.getMap();
            
            if(objectName == null) {
                throw new CustomException('Object API Name is Not Valid');
            }
            
            Boolean childObjectFlag = false;
            String relationshipName = '';
            for(Schema.ChildRelationship f : Id.valueof(parentRecordId).getSobjectType().getDescribe().getChildRelationships()) {
                if(String.valueof(f.getChildSObject()).toLowerCase() == sObjectName.toLowerCase()) {
                    childObjectFlag = true;
                    relationshipName = String.valueof(f.getField());
                }
            }
            
            if(!childObjectFlag)
                throw new CustomException('Object you selected is not a child object of this record. Object Name : ' + sObjectName);
            
            for(String field : fields) {
                system.debug('==============='+field);
                if(!field.contains('.')){
                    objFields.add(field);
                    Schema.DescribeFieldResult fieldDesc = sObjectFieldMap.get(field.trim().toLowerCase()).getDescribe();
                    system.debug('==============='+fieldDesc);
                    
                    if(!sObjectFieldMap.keySet().contains(field.trim().toLowerCase())) {
                        throw new CustomException('Fields API Name is Not Valid. Field : ' + field.trim());
                    }
                    if(String.valueof(fieldDesc.getType()) == 'LOCATION') {
                        throw new CustomException('Geo Location Fields are not supported : Field ' + field.trim());
                    }
                    if(String.valueof(fieldDesc.getType()) == 'PICKLIST') {
                        fieldsWP.add(new FieldWrapper(fieldDesc.getLabel(), fieldDesc.getName(), String.valueof(fieldDesc.getType()), apexTypetoJSType.get(String.valueof(fieldDesc.getType())), fieldDesc.isUpdateable(), getPicklistValues(sObjectName, fieldDesc.getName())));
                    } else if(rLabels.containsKey(fieldDesc.getName())){
                        fieldsWP.add(new FieldWrapper(rLabels.get(fieldDesc.getName()), fieldDesc.getName(), 'REFERENCE', 'reference', fieldDesc.isUpdateable(), null));
                    } else {
                        fieldsWP.add(new FieldWrapper(fieldDesc.getLabel(), fieldDesc.getName(), String.valueof(fieldDesc.getType()), apexTypetoJSType.get(String.valueof(fieldDesc.getType())), fieldDesc.isUpdateable(), null));
                    }
                    
                } 
            }
            
            // Process Reference Fields
            system.debug('==============='+objFields);
         

            system.debug('==============='+String.join(new List<String>(fields), ','));
            String query = 'SELECT ' + String.join(new List<String>(fields), ',');
            if(!fields.contains('id')) {
                query += ', id';
            }
            query += ' FROM ' + objectName + ' WHERE '+ relationshipName + ' = \'' + parentRecordId + '\' LIMIT 49999';
            result.fieldsList = fieldsWP;
            result.recordList = Database.query(query);
            return result;
        } catch (Exception err) {
            throw new AuraHandledException(err.getMessage());
        }
    }
    
    private static List<PicklistOptions> getPicklistValues(String objectName, String fieldName) {
        List<PicklistOptions> picklistValues = new List<PicklistOptions>();
        List<Schema.PicklistEntry> ple = Schema.getGlobalDescribe().get(objectName).getDescribe().fields.getMap().get(fieldName).getDescribe().getPicklistValues();
        for(Schema.PicklistEntry pkValue : ple) {
            picklistValues.add( new PicklistOptions(pkValue.getLabel(), pkValue.getValue()) );
        }
        return picklistValues;
    }
    
    @AuraEnabled
    public static String deleteRecords(List<String> recordIds, String apiName) {
        try {
            String query = 'SELECT id FROM ' + apiName + ' WHERE Id IN :recordIds LIMIT 9999';
            List<sObject> sobjList = Database.query(query);
            Delete sobjList;
            return 'success';
        } catch(Exception err) {
            throw new AuraHandledException(err.getMessage());
        }
    }
    
    
    @AuraEnabled
    public static String saveRecord(String objectName, String recordData) {
        try {
            Map<String, Object> fieldMap = (Map<String, Object>)JSON.deserializeUntyped(recordData);
            Schema.SObjectType targetType = Schema.getGlobalDescribe().get(objectName);
            SObject newSobject = targetType.newSObject();
            for (String key : fieldMap.keySet()) {
                Object value = fieldMap.get(key);
                Schema.DisplayType valueType = targetType.getDescribe().fields.getMap().get(key).getDescribe().getType();
                if (value instanceof String && valueType != Schema.DisplayType.String) {
                    String svalue = (String)value;
                    if (valueType == Schema.DisplayType.Date)
                        newSobject.put(key, Date.valueOf(svalue));
                    else if(valueType == Schema.DisplayType.DateTime)
                        newSobject.put(key, DateTime.valueOf(svalue));
                    else if (valueType == Schema.DisplayType.Percent || valueType == Schema.DisplayType.Currency)
                        newSobject.put(key, svalue == '' ? null : Decimal.valueOf(svalue));
                    else if (valueType == Schema.DisplayType.Double)
                        newSobject.put(key, svalue == '' ? null : Double.valueOf(svalue));
                    else if (valueType == Schema.DisplayType.Integer)
                        newSobject.put(key, Integer.valueOf(svalue));
                    else if (valueType == Schema.DisplayType.Base64)
                        newSobject.put(key, Blob.valueOf(svalue));
                    else if (valueType == Schema.DisplayType.Time)
                        newSobject.put(key, Time.newInstance(Integer.valueOf(svalue.split(':')[0]), Integer.valueOf(svalue.split(':')[1]), 00, 00));
                    else
                        newSobject.put(key, svalue);
                }
                else
                    newSobject.put(key, value);
            }
            system.debug('==========================='+newSobject);
            update newSobject;
            return 'success';
        } catch(Exception err) {
            throw new AuraHandledException(err.getMessage());
        }
    }
    
    public static Map<String, String> apexTypetoJSType = new Map<String, String> {
        'ID' => 'id',
            'PHONE' => 'tel',
            'URL' => 'url',
            'EMAIL' => 'email',
            'ADDRESS' => 'text',
            'TEXTAREA' => 'text',
            'STRING' => 'text',
            'REFERENCE' => 'text',
            'MULTIPICKLIST' => 'text',
            'PICKLIST' => 'picklist',
            'BOOLEAN' => 'checkbox',
            'DATE' => 'date',
            'DATETIME' => 'datetime',
            'TIME' => 'time',
            'DOUBLE' => 'number',
            'INTEGER' => 'number',
            'CURRENCY' => 'number',
            'PERCENT' => 'number'
            };
                
                public class ReturnWrapper {
                    @AuraEnabled public List<sObject> recordList;
                    @AuraEnabled public List<FieldWrapper> fieldsList;
                }
    
    public class FieldWrapper {
        @AuraEnabled public String label;
        @AuraEnabled public String value;
        @AuraEnabled public String dataType;
        @AuraEnabled public String ltngType;
        @AuraEnabled public Boolean isEditable;
        @AuraEnabled public List<PicklistOptions> picklistValues;
        public FieldWrapper(String label, String value, String dataType, String ltngType, Boolean isEditable, List<PicklistOptions> picklistValues) {
            this.label = label;
            this.value = value;
            this.dataType = dataType;
            this.ltngType = ltngType;
            this.isEditable = isEditable;
            this.picklistValues = picklistValues;
        }
    }
    
    public class PicklistOptions {
        @AuraEnabled public String label;
        @AuraEnabled public String value;
        public PicklistOptions(String label, String value) {
            this.label = label;
            this.value = value;
        }
    }
}