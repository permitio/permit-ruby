# OpenapiClient::ResourcesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_resource**](ResourcesApi.md#create_resource) | **POST** /v2/schema/{proj_id}/{env_id}/resources | Create Resource |
| [**delete_resource**](ResourcesApi.md#delete_resource) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id} | Delete Resource |
| [**get_resource**](ResourcesApi.md#get_resource) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id} | Get Resource |
| [**list_resources**](ResourcesApi.md#list_resources) | **GET** /v2/schema/{proj_id}/{env_id}/resources | List Resources |
| [**replace_resource**](ResourcesApi.md#replace_resource) | **PUT** /v2/schema/{proj_id}/{env_id}/resources/{resource_id} | Replace Resource |
| [**update_resource**](ResourcesApi.md#update_resource) | **PATCH** /v2/schema/{proj_id}/{env_id}/resources/{resource_id} | Update Resource |


## create_resource

> <ResourceRead> create_resource(proj_id, env_id, resource_create)

Create Resource

Creates a new resource (a type of object you may protect with permissions).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_create = OpenapiClient::ResourceCreate.new({key: 'key_example', name: 'name_example', actions: { key: OpenapiClient::ActionBlockEditable.new}}) # ResourceCreate | 

begin
  # Create Resource
  result = api_instance.create_resource(proj_id, env_id, resource_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->create_resource: #{e}"
end
```

#### Using the create_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRead>, Integer, Hash)> create_resource_with_http_info(proj_id, env_id, resource_create)

```ruby
begin
  # Create Resource
  data, status_code, headers = api_instance.create_resource_with_http_info(proj_id, env_id, resource_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->create_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_create** | [**ResourceCreate**](ResourceCreate.md) |  |  |

### Return type

[**ResourceRead**](ResourceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource

> delete_resource(proj_id, env_id, resource_id)

Delete Resource

Deletes the resource and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").

begin
  # Delete Resource
  api_instance.delete_resource(proj_id, env_id, resource_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->delete_resource: #{e}"
end
```

#### Using the delete_resource_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resource_with_http_info(proj_id, env_id, resource_id)

```ruby
begin
  # Delete Resource
  data, status_code, headers = api_instance.delete_resource_with_http_info(proj_id, env_id, resource_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->delete_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource

> <ResourceRead> get_resource(proj_id, env_id, resource_id)

Get Resource

Gets a single resource, if such resource exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").

begin
  # Get Resource
  result = api_instance.get_resource(proj_id, env_id, resource_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->get_resource: #{e}"
end
```

#### Using the get_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRead>, Integer, Hash)> get_resource_with_http_info(proj_id, env_id, resource_id)

```ruby
begin
  # Get Resource
  data, status_code, headers = api_instance.get_resource_with_http_info(proj_id, env_id, resource_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->get_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ResourceRead**](ResourceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resources

> <Array<ResourceRead>> list_resources(proj_id, env_id, opts)

List Resources

Lists all the resources defined in your schema.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  include_built_in: true, # Boolean | Whether to include or exclude built-in resources, default is False
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Resources
  result = api_instance.list_resources(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->list_resources: #{e}"
end
```

#### Using the list_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResourceRead>>, Integer, Hash)> list_resources_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Resources
  data, status_code, headers = api_instance.list_resources_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResourceRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->list_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **include_built_in** | **Boolean** | Whether to include or exclude built-in resources, default is False | [optional][default to false] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ResourceRead&gt;**](ResourceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_resource

> <ResourceRead> replace_resource(proj_id, env_id, resource_id, resource_replace)

Replace Resource

Completely replaces the resource definition.  - If the resource key is changed, all role and permissions assignments for the the resource will be revoked. - If the resource key is unchanged, but some actions are removed or renamed from the resource definition, role and permissions assignments for these actions will be revoked.  TODO: we need to decide if we are auto-revoking, or if we are rejecting the PUT completely while there are permissions that can be affected.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
resource_replace = OpenapiClient::ResourceReplace.new({name: 'name_example', actions: { key: OpenapiClient::ActionBlockEditable.new}}) # ResourceReplace | 

begin
  # Replace Resource
  result = api_instance.replace_resource(proj_id, env_id, resource_id, resource_replace)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->replace_resource: #{e}"
end
```

#### Using the replace_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRead>, Integer, Hash)> replace_resource_with_http_info(proj_id, env_id, resource_id, resource_replace)

```ruby
begin
  # Replace Resource
  data, status_code, headers = api_instance.replace_resource_with_http_info(proj_id, env_id, resource_id, resource_replace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->replace_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **resource_replace** | [**ResourceReplace**](ResourceReplace.md) |  |  |

### Return type

[**ResourceRead**](ResourceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_resource

> <ResourceRead> update_resource(proj_id, env_id, resource_id, resource_update)

Update Resource

Partially updates the resource definition. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourcesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
resource_update = OpenapiClient::ResourceUpdate.new # ResourceUpdate | 

begin
  # Update Resource
  result = api_instance.update_resource(proj_id, env_id, resource_id, resource_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->update_resource: #{e}"
end
```

#### Using the update_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRead>, Integer, Hash)> update_resource_with_http_info(proj_id, env_id, resource_id, resource_update)

```ruby
begin
  # Update Resource
  data, status_code, headers = api_instance.update_resource_with_http_info(proj_id, env_id, resource_id, resource_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourcesApi->update_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **resource_update** | [**ResourceUpdate**](ResourceUpdate.md) |  |  |

### Return type

[**ResourceRead**](ResourceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

