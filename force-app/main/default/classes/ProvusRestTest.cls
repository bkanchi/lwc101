global class ProvusRestTest {
   
    public static void displayDetails(String opId) {
        try{
            Map<string, string> payLoad = new Map<string, string>();
            payLoad.put('oppId',opId);
            HttpRequest httpRequest = new HttpRequest();
            String endPointURL= URL.getSalesforceBaseUrl().toExternalForm()+'/services/apexrest/externalService';
            httpRequest.setEndpoint(endPointURL);
            httpRequest.setMethod('POST');
            httpRequest.setTimeout(120000);
            httprequest.setHeader('Content-Type', 'application/json');
            httprequest.setHeader('Accept','application/json');
            system.debug('sessionId=== '+UserInfo.getSessionID());
            httpRequest.setHeader('Authorization', 'OAuth'+UserInfo.getSessionID());  // NEED CHANGE      
            httpRequest.setHeader('Authorization', 'Bearer'+' '+UserInfo.getSessionID());  // NEED CHANGE
            httpRequest.setBody(json.serializePretty(payLoad));
            Http http = new Http();   
            HttpResponse httpResponse = http.send(httpRequest);
            system.debug('======= '+httpResponse.getBody());
            System.debug(LoggingLevel.DEBUG,'>> Response of payload >> '+httpResponse.getStatusCode());
        }catch(Exception e) {
            System.debug(LoggingLevel.DEBUG,'ERROR: '+ e.getMessage());
        }
    }
}