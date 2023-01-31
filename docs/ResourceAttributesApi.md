# OpenapiClient::ResourceAttributesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_resource_attribute**](ResourceAttributesApi.md#create_resource_attribute) | **POST** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes | Create Resource Attribute |
| [**delete_resource_attribute**](ResourceAttributesApi.md#delete_resource_attribute) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id} | Delete Resource Attribute |
| [**get_resource_attribute**](ResourceAttributesApi.md#get_resource_attribute) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id} | Get Resource Attribute |
| [**list_resource_attributes**](ResourceAttributesApi.md#list_resource_attributes) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes | List Resource Attributes |
| [**update_resource_attribute**](ResourceAttributesApi.md#update_resource_attribute) | **PATCH** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/attributes/{attribute_id} | Update Resource Attribute |


## create_resource_attribute

> <ResourceAttributeRead> create_resource_attribute(proj_id, env_id, resource_id, resource_attribute_create)

Create Resource Attribute

Creates a new attribute as part of the resource definition.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
resource_attribute_create = OpenapiClient::ResourceAttributeCreate.new({key: 'key_example', type: OpenapiClient::AttributeType::BOOL}) # ResourceAttributeCreate | 

begin
  # Create Resource Attribute
  result = api_instance.create_resource_attribute(proj_id, env_id, resource_id, resource_attribute_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->create_resource_attribute: #{e}"
end
```

#### Using the create_resource_attribute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceAttributeRead>, Integer, Hash)> create_resource_attribute_with_http_info(proj_id, env_id, resource_id, resource_attribute_create)

```ruby
begin
  # Create Resource Attribute
  data, status_code, headers = api_instance.create_resource_attribute_with_http_info(proj_id, env_id, resource_id, resource_attribute_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceAttributeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->create_resource_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **resource_attribute_create** | [**ResourceAttributeCreate**](ResourceAttributeCreate.md) |  |  |

### Return type

[**ResourceAttributeRead**](ResourceAttributeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_attribute

> delete_resource_attribute(proj_id, env_id, resource_id, attribute_id, opts)

Delete Resource Attribute

Deletes the attribute and all its related data.  Note: If the attribute is used by policies, removing it will cause the attribute to evaluate as `undefined`.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
attribute_id = 'attribute_id_example' # String | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # Delete Resource Attribute
  api_instance.delete_resource_attribute(proj_id, env_id, resource_id, attribute_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->delete_resource_attribute: #{e}"
end
```

#### Using the delete_resource_attribute_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, opts)

```ruby
begin
  # Delete Resource Attribute
  data, status_code, headers = api_instance.delete_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->delete_resource_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **attribute_id** | **String** | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;). |  |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_attribute

> <ResourceAttributeRead> get_resource_attribute(proj_id, env_id, resource_id, attribute_id)

Get Resource Attribute

Gets a single attribute defined on the resource, if such attribute exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
attribute_id = 'attribute_id_example' # String | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \"slug\").

begin
  # Get Resource Attribute
  result = api_instance.get_resource_attribute(proj_id, env_id, resource_id, attribute_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->get_resource_attribute: #{e}"
end
```

#### Using the get_resource_attribute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceAttributeRead>, Integer, Hash)> get_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id)

```ruby
begin
  # Get Resource Attribute
  data, status_code, headers = api_instance.get_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceAttributeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->get_resource_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **attribute_id** | **String** | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ResourceAttributeRead**](ResourceAttributeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_attributes

> <Array<ResourceAttributeRead>> list_resource_attributes(proj_id, env_id, resource_id, opts)

List Resource Attributes

Lists all the attributes defined on the resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Resource Attributes
  result = api_instance.list_resource_attributes(proj_id, env_id, resource_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->list_resource_attributes: #{e}"
end
```

#### Using the list_resource_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResourceAttributeRead>>, Integer, Hash)> list_resource_attributes_with_http_info(proj_id, env_id, resource_id, opts)

```ruby
begin
  # List Resource Attributes
  data, status_code, headers = api_instance.list_resource_attributes_with_http_info(proj_id, env_id, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResourceAttributeRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->list_resource_attributes_with_http_info: #{e}"
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

[**Array&lt;ResourceAttributeRead&gt;**](ResourceAttributeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_resource_attribute

> <ResourceAttributeRead> update_resource_attribute(proj_id, env_id, resource_id, attribute_id, resource_attribute_update)

Update Resource Attribute

Partially updates the attribute defined on a resource. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
attribute_id = 'attribute_id_example' # String | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \"slug\").
resource_attribute_update = OpenapiClient::ResourceAttributeUpdate.new # ResourceAttributeUpdate | 

begin
  # Update Resource Attribute
  result = api_instance.update_resource_attribute(proj_id, env_id, resource_id, attribute_id, resource_attribute_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->update_resource_attribute: #{e}"
end
```

#### Using the update_resource_attribute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceAttributeRead>, Integer, Hash)> update_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, resource_attribute_update)

```ruby
begin
  # Update Resource Attribute
  data, status_code, headers = api_instance.update_resource_attribute_with_http_info(proj_id, env_id, resource_id, attribute_id, resource_attribute_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceAttributeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceAttributesApi->update_resource_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **attribute_id** | **String** | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;). |  |
| **resource_attribute_update** | [**ResourceAttributeUpdate**](ResourceAttributeUpdate.md) |  |  |

### Return type

[**ResourceAttributeRead**](ResourceAttributeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

