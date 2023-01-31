# OpenapiClient::ConditionSetsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_condition_set**](ConditionSetsApi.md#create_condition_set) | **POST** /v2/schema/{proj_id}/{env_id}/condition_sets | Create Condition Set |
| [**delete_condition_set**](ConditionSetsApi.md#delete_condition_set) | **DELETE** /v2/schema/{proj_id}/{env_id}/condition_sets/{condition_set_id} | Delete Condition Set |
| [**get_condition_set**](ConditionSetsApi.md#get_condition_set) | **GET** /v2/schema/{proj_id}/{env_id}/condition_sets/{condition_set_id} | Get Condition Set |
| [**list_condition_sets**](ConditionSetsApi.md#list_condition_sets) | **GET** /v2/schema/{proj_id}/{env_id}/condition_sets | List Condition Sets |
| [**update_condition_set**](ConditionSetsApi.md#update_condition_set) | **PATCH** /v2/schema/{proj_id}/{env_id}/condition_sets/{condition_set_id} | Update Condition Set |


## create_condition_set

> <ConditionSetRead> create_condition_set(proj_id, env_id, condition_set_create)

Create Condition Set

Creates a new condition set (can be either a user set or a resource set).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConditionSetsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
condition_set_create = OpenapiClient::ConditionSetCreate.new({key: 'key_example', name: 'name_example'}) # ConditionSetCreate | 

begin
  # Create Condition Set
  result = api_instance.create_condition_set(proj_id, env_id, condition_set_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->create_condition_set: #{e}"
end
```

#### Using the create_condition_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConditionSetRead>, Integer, Hash)> create_condition_set_with_http_info(proj_id, env_id, condition_set_create)

```ruby
begin
  # Create Condition Set
  data, status_code, headers = api_instance.create_condition_set_with_http_info(proj_id, env_id, condition_set_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConditionSetRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->create_condition_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **condition_set_create** | [**ConditionSetCreate**](ConditionSetCreate.md) |  |  |

### Return type

[**ConditionSetRead**](ConditionSetRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_condition_set

> delete_condition_set(proj_id, env_id, condition_set_id)

Delete Condition Set

Deletes a condition set and all its related data. This includes any permissions granted to said condition set (i.e: any matching condition set rules).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConditionSetsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
condition_set_id = 'condition_set_id_example' # String | Either the unique id of the condition set, or the URL-friendly key of the condition set (i.e: the \"slug\").

begin
  # Delete Condition Set
  api_instance.delete_condition_set(proj_id, env_id, condition_set_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->delete_condition_set: #{e}"
end
```

#### Using the delete_condition_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_condition_set_with_http_info(proj_id, env_id, condition_set_id)

```ruby
begin
  # Delete Condition Set
  data, status_code, headers = api_instance.delete_condition_set_with_http_info(proj_id, env_id, condition_set_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->delete_condition_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **condition_set_id** | **String** | Either the unique id of the condition set, or the URL-friendly key of the condition set (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_condition_set

> <ConditionSetRead> get_condition_set(proj_id, env_id, condition_set_id)

Get Condition Set

Gets a single condition set, if such condition set exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConditionSetsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
condition_set_id = 'condition_set_id_example' # String | Either the unique id of the condition set, or the URL-friendly key of the condition set (i.e: the \"slug\").

begin
  # Get Condition Set
  result = api_instance.get_condition_set(proj_id, env_id, condition_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->get_condition_set: #{e}"
end
```

#### Using the get_condition_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConditionSetRead>, Integer, Hash)> get_condition_set_with_http_info(proj_id, env_id, condition_set_id)

```ruby
begin
  # Get Condition Set
  data, status_code, headers = api_instance.get_condition_set_with_http_info(proj_id, env_id, condition_set_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConditionSetRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->get_condition_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **condition_set_id** | **String** | Either the unique id of the condition set, or the URL-friendly key of the condition set (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ConditionSetRead**](ConditionSetRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_condition_sets

> <Array<ConditionSetRead>> list_condition_sets(proj_id, env_id, opts)

List Condition Sets

Lists all condition sets matching a filter.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConditionSetsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  type: OpenapiClient::ConditionSetType::USERSET, # ConditionSetType | if provided, will return only the condition sets of the specified type. e.g: only user sets.
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Condition Sets
  result = api_instance.list_condition_sets(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->list_condition_sets: #{e}"
end
```

#### Using the list_condition_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ConditionSetRead>>, Integer, Hash)> list_condition_sets_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Condition Sets
  data, status_code, headers = api_instance.list_condition_sets_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ConditionSetRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->list_condition_sets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **type** | [**ConditionSetType**](.md) | if provided, will return only the condition sets of the specified type. e.g: only user sets. | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ConditionSetRead&gt;**](ConditionSetRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_condition_set

> <ConditionSetRead> update_condition_set(proj_id, env_id, condition_set_id, condition_set_update)

Update Condition Set

Partially updates a condition set. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ConditionSetsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
condition_set_id = 'condition_set_id_example' # String | Either the unique id of the condition set, or the URL-friendly key of the condition set (i.e: the \"slug\").
condition_set_update = OpenapiClient::ConditionSetUpdate.new # ConditionSetUpdate | 

begin
  # Update Condition Set
  result = api_instance.update_condition_set(proj_id, env_id, condition_set_id, condition_set_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->update_condition_set: #{e}"
end
```

#### Using the update_condition_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConditionSetRead>, Integer, Hash)> update_condition_set_with_http_info(proj_id, env_id, condition_set_id, condition_set_update)

```ruby
begin
  # Update Condition Set
  data, status_code, headers = api_instance.update_condition_set_with_http_info(proj_id, env_id, condition_set_id, condition_set_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConditionSetRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ConditionSetsApi->update_condition_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **condition_set_id** | **String** | Either the unique id of the condition set, or the URL-friendly key of the condition set (i.e: the \&quot;slug\&quot;). |  |
| **condition_set_update** | [**ConditionSetUpdate**](ConditionSetUpdate.md) |  |  |

### Return type

[**ConditionSetRead**](ConditionSetRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

