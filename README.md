# apex_awslambda
aws lambda client with apex.

# usage

```apex
AWSLambdaClient client = new AWSLambdaClient(
  'input your aws access key id',
  'input your aws secret access key',
  'input your region'
);

client.invokeAsync(
  'input your function name', 
  new Map<String, Object> {
    'payload_key1'=>'payload_value1',
    'payload_key2'=>'payload_value2'
  }
);
```
