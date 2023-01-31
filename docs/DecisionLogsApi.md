# OpenapiClient::DecisionLogsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_pdp_decision_logs**](DecisionLogsApi.md#list_pdp_decision_logs) | **GET** /v2/pdps/{proj_id}/{env_id}/decision-logs/{pdp_id} | List PDP Decisions |


## list_pdp_decision_logs

> <PaginatedResultOPADecisionLog> list_pdp_decision_logs(proj_id, env_id, pdp_id, opts)

List PDP Decisions

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DecisionLogsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique id of the pdp
opts = {
  users: ['inner_example'], # Array<String> | List of user IDs to filter by
  approved: true, # Boolean | Filter by approved decisions
  resources: ['inner_example'], # Array<String> | Filter by resources
  timestamp_from: 56, # Integer | Filter by timestamp from
  timestamp_to: 56, # Integer | Filter by timestamp to
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List PDP Decisions
  result = api_instance.list_pdp_decision_logs(proj_id, env_id, pdp_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DecisionLogsApi->list_pdp_decision_logs: #{e}"
end
```

#### Using the list_pdp_decision_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResultOPADecisionLog>, Integer, Hash)> list_pdp_decision_logs_with_http_info(proj_id, env_id, pdp_id, opts)

```ruby
begin
  # List PDP Decisions
  data, status_code, headers = api_instance.list_pdp_decision_logs_with_http_info(proj_id, env_id, pdp_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResultOPADecisionLog>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DecisionLogsApi->list_pdp_decision_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **pdp_id** | **String** | The unique id of the pdp |  |
| **users** | [**Array&lt;String&gt;**](String.md) | List of user IDs to filter by | [optional] |
| **approved** | **Boolean** | Filter by approved decisions | [optional] |
| **resources** | [**Array&lt;String&gt;**](String.md) | Filter by resources | [optional] |
| **timestamp_from** | **Integer** | Filter by timestamp from | [optional] |
| **timestamp_to** | **Integer** | Filter by timestamp to | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**PaginatedResultOPADecisionLog**](PaginatedResultOPADecisionLog.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

