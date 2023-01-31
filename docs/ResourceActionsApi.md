# OpenapiClient::ResourceActionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_resource_action**](ResourceActionsApi.md#create_resource_action) | **POST** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions | Create Resource Action |
| [**delete_resource_action**](ResourceActionsApi.md#delete_resource_action) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions/{action_id} | Delete Resource Action |
| [**get_resource_action**](ResourceActionsApi.md#get_resource_action) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions/{action_id} | Get Resource Action |
| [**list_resource_actions**](ResourceActionsApi.md#list_resource_actions) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions | List Resource Actions |
| [**update_resource_action**](ResourceActionsApi.md#update_resource_action) | **PATCH** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/actions/{action_id} | Update Resource Action |


## create_resource_action

> <ResourceActionRead> create_resource_action(proj_id, env_id, resource_id, resource_action_create)

Create Resource Action

Creates a new action that can affect the resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceActionsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
resource_action_create = OpenapiClient::ResourceActionCreate.new({key: 'key_example', name: 'name_example'}) # ResourceActionCreate | 

begin
  # Create Resource Action
  result = api_instance.create_resource_action(proj_id, env_id, resource_id, resource_action_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->create_resource_action: #{e}"
end
```

#### Using the create_resource_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceActionRead>, Integer, Hash)> create_resource_action_with_http_info(proj_id, env_id, resource_id, resource_action_create)

```ruby
begin
  # Create Resource Action
  data, status_code, headers = api_instance.create_resource_action_with_http_info(proj_id, env_id, resource_id, resource_action_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceActionRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->create_resource_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **resource_action_create** | [**ResourceActionCreate**](ResourceActionCreate.md) |  |  |

### Return type

[**ResourceActionRead**](ResourceActionRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_action

> delete_resource_action(proj_id, env_id, resource_id, action_id)

Delete Resource Action

Deletes the action and all its related data. This includes any permissions granted to perform the action.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceActionsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
action_id = 'action_id_example' # String | Either the unique id of the action, or the URL-friendly key of the action (i.e: the \"slug\").

begin
  # Delete Resource Action
  api_instance.delete_resource_action(proj_id, env_id, resource_id, action_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->delete_resource_action: #{e}"
end
```

#### Using the delete_resource_action_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resource_action_with_http_info(proj_id, env_id, resource_id, action_id)

```ruby
begin
  # Delete Resource Action
  data, status_code, headers = api_instance.delete_resource_action_with_http_info(proj_id, env_id, resource_id, action_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->delete_resource_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **action_id** | **String** | Either the unique id of the action, or the URL-friendly key of the action (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_action

> <ResourceActionRead> get_resource_action(proj_id, env_id, resource_id, action_id)

Get Resource Action

Gets a single action defined on the resource, if such action exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceActionsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
action_id = 'action_id_example' # String | Either the unique id of the action, or the URL-friendly key of the action (i.e: the \"slug\").

begin
  # Get Resource Action
  result = api_instance.get_resource_action(proj_id, env_id, resource_id, action_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->get_resource_action: #{e}"
end
```

#### Using the get_resource_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceActionRead>, Integer, Hash)> get_resource_action_with_http_info(proj_id, env_id, resource_id, action_id)

```ruby
begin
  # Get Resource Action
  data, status_code, headers = api_instance.get_resource_action_with_http_info(proj_id, env_id, resource_id, action_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceActionRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->get_resource_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **action_id** | **String** | Either the unique id of the action, or the URL-friendly key of the action (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ResourceActionRead**](ResourceActionRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_actions

> <Array<ResourceActionRead>> list_resource_actions(proj_id, env_id, resource_id, opts)

List Resource Actions

Lists all the actions defined on the resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceActionsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Resource Actions
  result = api_instance.list_resource_actions(proj_id, env_id, resource_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->list_resource_actions: #{e}"
end
```

#### Using the list_resource_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResourceActionRead>>, Integer, Hash)> list_resource_actions_with_http_info(proj_id, env_id, resource_id, opts)

```ruby
begin
  # List Resource Actions
  data, status_code, headers = api_instance.list_resource_actions_with_http_info(proj_id, env_id, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResourceActionRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->list_resource_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ResourceActionRead&gt;**](ResourceActionRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_action

> <ResourceActionRead> update_resource_action(proj_id, env_id, resource_id, action_id, resource_action_update)

Update Resource Action

Partially updates the action defined on a resource. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceActionsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
action_id = 'action_id_example' # String | Either the unique id of the action, or the URL-friendly key of the action (i.e: the \"slug\").
resource_action_update = OpenapiClient::ResourceActionUpdate.new # ResourceActionUpdate | 

begin
  # Update Resource Action
  result = api_instance.update_resource_action(proj_id, env_id, resource_id, action_id, resource_action_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->update_resource_action: #{e}"
end
```

#### Using the update_resource_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceActionRead>, Integer, Hash)> update_resource_action_with_http_info(proj_id, env_id, resource_id, action_id, resource_action_update)

```ruby
begin
  # Update Resource Action
  data, status_code, headers = api_instance.update_resource_action_with_http_info(proj_id, env_id, resource_id, action_id, resource_action_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceActionRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceActionsApi->update_resource_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **action_id** | **String** | Either the unique id of the action, or the URL-friendly key of the action (i.e: the \&quot;slug\&quot;). |  |
| **resource_action_update** | [**ResourceActionUpdate**](ResourceActionUpdate.md) |  |  |

### Return type

[**ResourceActionRead**](ResourceActionRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

