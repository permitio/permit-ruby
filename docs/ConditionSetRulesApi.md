# OpenapiClient::ConditionSetRulesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_set_permissions**](ConditionSetRulesApi.md#assign_set_permissions) | **POST** /v2/facts/{proj_id}/{env_id}/set_rules | Assign Set Permissions |
| [**list_set_permissions**](ConditionSetRulesApi.md#list_set_permissions) | **GET** /v2/facts/{proj_id}/{env_id}/set_rules | List Set Permissions |
| [**unassign_set_permissions**](ConditionSetRulesApi.md#unassign_set_permissions) | **DELETE** /v2/facts/{proj_id}/{env_id}/set_rules | Unassign Set Permissions |


## assign_set_permissions

> <Array<ConditionSetRuleRead>> assign_set_permissions(proj_id, env_id, condition_set_rule_create)

Assign Set Permissions

Grant permissions to a user set *on* a resource set.  If the permission is already granted, it is skipped.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConditionSetRulesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
condition_set_rule_create = OpenapiClient::ConditionSetRuleCreate.new({user_set: 'user_set_example', permission: 'permission_example', resource_set: 'resource_set_example'}) # ConditionSetRuleCreate | 

begin
  # Assign Set Permissions
  result = api_instance.assign_set_permissions(proj_id, env_id, condition_set_rule_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetRulesApi->assign_set_permissions: #{e}"
end
```

#### Using the assign_set_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConditionSetRuleRead>>, Integer, Hash)> assign_set_permissions_with_http_info(proj_id, env_id, condition_set_rule_create)

```ruby
begin
  # Assign Set Permissions
  data, status_code, headers = api_instance.assign_set_permissions_with_http_info(proj_id, env_id, condition_set_rule_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConditionSetRuleRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetRulesApi->assign_set_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **condition_set_rule_create** | [**ConditionSetRuleCreate**](ConditionSetRuleCreate.md) |  |  |

### Return type

[**Array&lt;ConditionSetRuleRead&gt;**](ConditionSetRuleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_set_permissions

> <Array<ConditionSetRuleRead>> list_set_permissions(proj_id, env_id, opts)

List Set Permissions

Lists the condition set rules matching the filter. - If the `user_set` filter is present, will only return the permissions set of that user set. - If the `permission` filter is present, will only return the permissions sets that equals to the queried permission. - If the `resource_set` filter is present, will only return the permissions set of that resource set.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConditionSetRulesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  user_set: 'user_set_example', # String | optional user set filter, will only return rules where the permission is granted to this user set
  permission: 'permission_example', # String | optional permission filter, will only return condition set rules granting this permission
  resource_set: 'resource_set_example', # String | optional resource set filter, will only return rules where the permission is granted on this resource set
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Set Permissions
  result = api_instance.list_set_permissions(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetRulesApi->list_set_permissions: #{e}"
end
```

#### Using the list_set_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConditionSetRuleRead>>, Integer, Hash)> list_set_permissions_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Set Permissions
  data, status_code, headers = api_instance.list_set_permissions_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConditionSetRuleRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetRulesApi->list_set_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_set** | **String** | optional user set filter, will only return rules where the permission is granted to this user set | [optional] |
| **permission** | **String** | optional permission filter, will only return condition set rules granting this permission | [optional] |
| **resource_set** | **String** | optional resource set filter, will only return rules where the permission is granted on this resource set | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ConditionSetRuleRead&gt;**](ConditionSetRuleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unassign_set_permissions

> unassign_set_permissions(proj_id, env_id, condition_set_rule_remove)

Unassign Set Permissions

Revokes permissions to a user set *on* a resource set.  If the permission is not granted, it is skipped.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConditionSetRulesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
condition_set_rule_remove = OpenapiClient::ConditionSetRuleRemove.new({user_set: 'user_set_example', permission: 'permission_example', resource_set: 'resource_set_example'}) # ConditionSetRuleRemove | 

begin
  # Unassign Set Permissions
  api_instance.unassign_set_permissions(proj_id, env_id, condition_set_rule_remove)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetRulesApi->unassign_set_permissions: #{e}"
end
```

#### Using the unassign_set_permissions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unassign_set_permissions_with_http_info(proj_id, env_id, condition_set_rule_remove)

```ruby
begin
  # Unassign Set Permissions
  data, status_code, headers = api_instance.unassign_set_permissions_with_http_info(proj_id, env_id, condition_set_rule_remove)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetRulesApi->unassign_set_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **condition_set_rule_remove** | [**ConditionSetRuleRemove**](ConditionSetRuleRemove.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

