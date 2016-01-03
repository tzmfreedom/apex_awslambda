public with sharing class AWSLambdaClient extends AWSSigV4Client {
    private final String SERVICE = 'lambda';
    
    public AWSLambdaClient(String accessKeyId, String accessKeySecret, String region) {
        super(accessKeyId, accessKeySecret, region);
    }
    
    /**
     * Call Function
     */
    public String invokeAsync(
        String functionName,
        Map<String, Object> payLoad
    ) {
        Map<String, String> params = new Map<String, String>{};
        
        List<String> signedHeaders = new List<String>{
            'host', 'x-amz-date'
        };
        
        String jsonBody = Json.serialize(payLoad);
        String resource_path = '/2014-11-13/functions/' + functionName + '/invoke-async/';
        String hostname = 'lambda.' + region + '.amazonaws.com';
        
        return this.call(
            SERVICE,
            'POST',
            jsonBody,
            hostname,
            resource_path,
            signedHeaders,
            params
        );
    }
}