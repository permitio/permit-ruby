# OpenapiClient::AuditElementsDataApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**elements_list_audit_logs**](AuditElementsDataApi.md#elements_list_audit_logs) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/audit_logs | List audit logs |


## elements_list_audit_logs

> <PaginatedResultAuditLog> elements_list_audit_logs(proj_id, env_id, elements_config_id, opts)

List audit logs

Lists audit logs for for specific elements config (tenant scope)

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AuditElementsDataApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
opts = {
  search: 'search_example', # String | Text search for the email field
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List audit logs
  result = api_instance.elements_list_audit_logs(proj_id, env_id, elements_config_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuditElementsDataApi->elements_list_audit_logs: #{e}"
end
```

#### Using the elements_list_audit_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResultAuditLog>, Integer, Hash)> elements_list_audit_logs_with_http_info(proj_id, env_id, elements_config_id, opts)

```ruby
begin
  # List audit logs
  data, status_code, headers = api_instance.elements_list_audit_logs_with_http_info(proj_id, env_id, elements_config_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResultAuditLog>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuditElementsDataApi->elements_list_audit_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
| **search** | **String** | Text search for the email field | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**PaginatedResultAuditLog**](PaginatedResultAuditLog.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

