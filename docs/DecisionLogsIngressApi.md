# OpenapiClient::DecisionLogsIngressApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**insert_opa_decision_logs**](DecisionLogsIngressApi.md#insert_opa_decision_logs) | **POST** /v2/decision-logs/ingress | OPA Decision Logs Ingress |


## insert_opa_decision_logs

> insert_opa_decision_logs(request_body)

OPA Decision Logs Ingress

This ingress endpoint captures OPA decision logs.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DecisionLogsIngressApi.new
request_body = [3.56] # Array<Object> | 

begin
  # OPA Decision Logs Ingress
  api_instance.insert_opa_decision_logs(request_body)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DecisionLogsIngressApi->insert_opa_decision_logs: #{e}"
end
```

#### Using the insert_opa_decision_logs_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> insert_opa_decision_logs_with_http_info(request_body)

```ruby
begin
  # OPA Decision Logs Ingress
  data, status_code, headers = api_instance.insert_opa_decision_logs_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DecisionLogsIngressApi->insert_opa_decision_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;Object&gt;**](Object.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

