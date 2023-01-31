# OpenapiClient::ResourceInstancesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_resource_instance**](ResourceInstancesApi.md#create_resource_instance) | **POST** /v2/facts/{proj_id}/{env_id}/resource_instances | Create Resource Instance |
| [**delete_resource_instance**](ResourceInstancesApi.md#delete_resource_instance) | **DELETE** /v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id} | Delete Resource Instance |
| [**get_resource_instance**](ResourceInstancesApi.md#get_resource_instance) | **GET** /v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id} | Get Resource Instance |
| [**list_resource_instances**](ResourceInstancesApi.md#list_resource_instances) | **GET** /v2/facts/{proj_id}/{env_id}/resource_instances | List Resource Instances |
| [**update_resource_instance**](ResourceInstancesApi.md#update_resource_instance) | **PATCH** /v2/facts/{proj_id}/{env_id}/resource_instances/{instance_id} | Update Resource Instance |


## create_resource_instance

> <ResourceInstanceRead> create_resource_instance(proj_id, env_id, resource_instance_create)

Create Resource Instance

Creates a new instance inside the Permit.io system.  If the instance is already created: will return 200 instead of 201, and will return the existing instance object in the response body.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceInstancesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_instance_create = OpenapiClient::ResourceInstanceCreate.new({key: 'key_example', resource: 'resource_example'}) # ResourceInstanceCreate | 

begin
  # Create Resource Instance
  result = api_instance.create_resource_instance(proj_id, env_id, resource_instance_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->create_resource_instance: #{e}"
end
```

#### Using the create_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstanceRead>, Integer, Hash)> create_resource_instance_with_http_info(proj_id, env_id, resource_instance_create)

```ruby
begin
  # Create Resource Instance
  data, status_code, headers = api_instance.create_resource_instance_with_http_info(proj_id, env_id, resource_instance_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstanceRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->create_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_instance_create** | [**ResourceInstanceCreate**](ResourceInstanceCreate.md) |  |  |

### Return type

[**ResourceInstanceRead**](ResourceInstanceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_instance

> delete_resource_instance(proj_id, env_id, instance_id)

Delete Resource Instance

Deletes the instance and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceInstancesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
instance_id = 'instance_id_example' # String | Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \"slug\").

begin
  # Delete Resource Instance
  api_instance.delete_resource_instance(proj_id, env_id, instance_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->delete_resource_instance: #{e}"
end
```

#### Using the delete_resource_instance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resource_instance_with_http_info(proj_id, env_id, instance_id)

```ruby
begin
  # Delete Resource Instance
  data, status_code, headers = api_instance.delete_resource_instance_with_http_info(proj_id, env_id, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->delete_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **instance_id** | **String** | Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_instance

> <ResourceInstanceRead> get_resource_instance(proj_id, env_id, instance_id)

Get Resource Instance

Gets a instance, if such instance exists. Otherwise returns 404.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceInstancesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
instance_id = 'instance_id_example' # String | Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \"slug\").

begin
  # Get Resource Instance
  result = api_instance.get_resource_instance(proj_id, env_id, instance_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->get_resource_instance: #{e}"
end
```

#### Using the get_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstanceRead>, Integer, Hash)> get_resource_instance_with_http_info(proj_id, env_id, instance_id)

```ruby
begin
  # Get Resource Instance
  data, status_code, headers = api_instance.get_resource_instance_with_http_info(proj_id, env_id, instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstanceRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->get_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **instance_id** | **String** | Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ResourceInstanceRead**](ResourceInstanceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_instances

> <Array<ResourceInstanceRead>> list_resource_instances(proj_id, env_id, opts)

List Resource Instances

Lists all the resource instances defined within an environment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceInstancesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Resource Instances
  result = api_instance.list_resource_instances(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->list_resource_instances: #{e}"
end
```

#### Using the list_resource_instances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResourceInstanceRead>>, Integer, Hash)> list_resource_instances_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Resource Instances
  data, status_code, headers = api_instance.list_resource_instances_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResourceInstanceRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->list_resource_instances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ResourceInstanceRead&gt;**](ResourceInstanceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_instance

> <ResourceInstanceRead> update_resource_instance(proj_id, env_id, instance_id, resource_instance_update)

Update Resource Instance

Partially updates the instance definition. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceInstancesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
instance_id = 'instance_id_example' # String | Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \"slug\").
resource_instance_update = OpenapiClient::ResourceInstanceUpdate.new # ResourceInstanceUpdate | 

begin
  # Update Resource Instance
  result = api_instance.update_resource_instance(proj_id, env_id, instance_id, resource_instance_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->update_resource_instance: #{e}"
end
```

#### Using the update_resource_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceInstanceRead>, Integer, Hash)> update_resource_instance_with_http_info(proj_id, env_id, instance_id, resource_instance_update)

```ruby
begin
  # Update Resource Instance
  data, status_code, headers = api_instance.update_resource_instance_with_http_info(proj_id, env_id, instance_id, resource_instance_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceInstanceRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceInstancesApi->update_resource_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **instance_id** | **String** | Either the unique id of the resource instance, or the URL-friendly key of the resource instance (i.e: the \&quot;slug\&quot;). |  |
| **resource_instance_update** | [**ResourceInstanceUpdate**](ResourceInstanceUpdate.md) |  |  |

### Return type

[**ResourceInstanceRead**](ResourceInstanceRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

