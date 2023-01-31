# OpenapiClient::AuditLogsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_detailed_audit_log**](AuditLogsApi.md#get_detailed_audit_log) | **GET** /v2/pdps/{proj_id}/{env_id}/audit_logs/{log_id} | Get detailed audit log |
| [**list_audit_logs**](AuditLogsApi.md#list_audit_logs) | **GET** /v2/pdps/{proj_id}/{env_id}/audit_logs | List Audit Logs |


## get_detailed_audit_log

> <DetailedAuditLog> get_detailed_audit_log(proj_id, env_id, log_id)

Get detailed audit log

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AuditLogsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
log_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique id of the audit log

begin
  # Get detailed audit log
  result = api_instance.get_detailed_audit_log(proj_id, env_id, log_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuditLogsApi->get_detailed_audit_log: #{e}"
end
```

#### Using the get_detailed_audit_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetailedAuditLog>, Integer, Hash)> get_detailed_audit_log_with_http_info(proj_id, env_id, log_id)

```ruby
begin
  # Get detailed audit log
  data, status_code, headers = api_instance.get_detailed_audit_log_with_http_info(proj_id, env_id, log_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetailedAuditLog>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuditLogsApi->get_detailed_audit_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **log_id** | **String** | The unique id of the audit log |  |

### Return type

[**DetailedAuditLog**](DetailedAuditLog.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_audit_logs

> <PaginatedResultAuditLog> list_audit_logs(proj_id, env_id, opts)

List Audit Logs

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AuditLogsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  pdp_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Filter by pdp config id
  users: ['inner_example'], # Array<String> | List of user keys or emails to filter by
  decision: true, # Boolean | Filter by decision result
  resources: ['inner_example'], # Array<String> | Filter by resources
  tenant: 'tenant_example', # String | Filter by tenant
  action: 'action_example', # String | Filter by action
  timestamp_from: 56, # Integer | Filter by timestamp from
  timestamp_to: 56, # Integer | Filter by timestamp to
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Audit Logs
  result = api_instance.list_audit_logs(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuditLogsApi->list_audit_logs: #{e}"
end
```

#### Using the list_audit_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResultAuditLog>, Integer, Hash)> list_audit_logs_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Audit Logs
  data, status_code, headers = api_instance.list_audit_logs_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResultAuditLog>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuditLogsApi->list_audit_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **pdp_id** | **String** | Filter by pdp config id | [optional] |
| **users** | [**Array&lt;String&gt;**](String.md) | List of user keys or emails to filter by | [optional] |
| **decision** | **Boolean** | Filter by decision result | [optional] |
| **resources** | [**Array&lt;String&gt;**](String.md) | Filter by resources | [optional] |
| **tenant** | **String** | Filter by tenant | [optional] |
| **action** | **String** | Filter by action | [optional] |
| **timestamp_from** | **Integer** | Filter by timestamp from | [optional] |
| **timestamp_to** | **Integer** | Filter by timestamp to | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**PaginatedResultAuditLog**](PaginatedResultAuditLog.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

