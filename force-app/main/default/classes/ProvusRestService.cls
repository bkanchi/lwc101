@RestResource(urlMapping = '/externalService/*')
global class ProvusRestService {
    @HttpPost
    global static void getOpportunityData(String oppId) {
        RestRequest req = RestContext.request;
        List<Opportunity> oppList= [select id,Name,Amount from Opportunity where Id=: oppId];
        String result = JSON.serialize(oppList);
        RestContext.response.addHeader('Content-Type', 'application/json');
        RestContext.response.responseBody = Blob.valueOf(result);
    }
}