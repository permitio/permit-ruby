# OpenapiClient::UserAttributesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_attribute**](UserAttributesApi.md#create_user_attribute) | **POST** /v2/schema/{proj_id}/{env_id}/users/attributes | Create User Attribute |
| [**delete_user_attribute**](UserAttributesApi.md#delete_user_attribute) | **DELETE** /v2/schema/{proj_id}/{env_id}/users/attributes/{attribute_id} | Delete User Attribute |
| [**get_user_attribute**](UserAttributesApi.md#get_user_attribute) | **GET** /v2/schema/{proj_id}/{env_id}/users/attributes/{attribute_id} | Get User Attribute |
| [**list_user_attributes**](UserAttributesApi.md#list_user_attributes) | **GET** /v2/schema/{proj_id}/{env_id}/users/attributes | List User Attributes |
| [**update_user_attribute**](UserAttributesApi.md#update_user_attribute) | **PATCH** /v2/schema/{proj_id}/{env_id}/users/attributes/{attribute_id} | Update User Attribute |


## create_user_attribute

> <ResourceAttributeRead> create_user_attribute(proj_id, env_id, resource_attribute_create, opts)

Create User Attribute

Creates a new attribute for the User resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_attribute_create = OpenapiClient::ResourceAttributeCreate.new({key: 'key_example', type: OpenapiClient::AttributeType::BOOL}) # ResourceAttributeCreate | 
opts = {
  resource_id: 'resource_id_example' # String | 
}

begin
  # Create User Attribute
  result = api_instance.create_user_attribute(proj_id, env_id, resource_attribute_create, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->create_user_attribute: #{e}"
end
```

#### Using the create_user_attribute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceAttributeRead>, Integer, Hash)> create_user_attribute_with_http_info(proj_id, env_id, resource_attribute_create, opts)

```ruby
begin
  # Create User Attribute
  data, status_code, headers = api_instance.create_user_attribute_with_http_info(proj_id, env_id, resource_attribute_create, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceAttributeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->create_user_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_attribute_create** | [**ResourceAttributeCreate**](ResourceAttributeCreate.md) |  |  |
| **resource_id** | **String** |  | [optional][default to &#39;__user&#39;] |

### Return type

[**ResourceAttributeRead**](ResourceAttributeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_attribute

> delete_user_attribute(proj_id, env_id, attribute_id, opts)

Delete User Attribute

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

api_instance = OpenapiClient::UserAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
attribute_id = 'attribute_id_example' # String | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \"slug\").
opts = {
  resource_id: 'resource_id_example', # String | 
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # Delete User Attribute
  api_instance.delete_user_attribute(proj_id, env_id, attribute_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->delete_user_attribute: #{e}"
end
```

#### Using the delete_user_attribute_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_attribute_with_http_info(proj_id, env_id, attribute_id, opts)

```ruby
begin
  # Delete User Attribute
  data, status_code, headers = api_instance.delete_user_attribute_with_http_info(proj_id, env_id, attribute_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->delete_user_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **attribute_id** | **String** | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** |  | [optional][default to &#39;__user&#39;] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_attribute

> <ResourceAttributeRead> get_user_attribute(proj_id, env_id, attribute_id, opts)

Get User Attribute

Gets a single attribute defined on the User resource, if such attribute exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
attribute_id = 'attribute_id_example' # String | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \"slug\").
opts = {
  resource_id: 'resource_id_example' # String | 
}

begin
  # Get User Attribute
  result = api_instance.get_user_attribute(proj_id, env_id, attribute_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->get_user_attribute: #{e}"
end
```

#### Using the get_user_attribute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceAttributeRead>, Integer, Hash)> get_user_attribute_with_http_info(proj_id, env_id, attribute_id, opts)

```ruby
begin
  # Get User Attribute
  data, status_code, headers = api_instance.get_user_attribute_with_http_info(proj_id, env_id, attribute_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceAttributeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->get_user_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **attribute_id** | **String** | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** |  | [optional][default to &#39;__user&#39;] |

### Return type

[**ResourceAttributeRead**](ResourceAttributeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_attributes

> <Array<ResourceAttributeRead>> list_user_attributes(proj_id, env_id, opts)

List User Attributes

Lists all the attributes defined on the User resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  resource_id: 'resource_id_example', # String | 
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List User Attributes
  result = api_instance.list_user_attributes(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->list_user_attributes: #{e}"
end
```

#### Using the list_user_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResourceAttributeRead>>, Integer, Hash)> list_user_attributes_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List User Attributes
  data, status_code, headers = api_instance.list_user_attributes_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResourceAttributeRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->list_user_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** |  | [optional][default to &#39;__user&#39;] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ResourceAttributeRead&gt;**](ResourceAttributeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user_attribute

> <ResourceAttributeRead> update_user_attribute(proj_id, env_id, attribute_id, resource_attribute_update, opts)

Update User Attribute

Partially updates the attribute defined on the User resource. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserAttributesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
attribute_id = 'attribute_id_example' # String | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \"slug\").
resource_attribute_update = OpenapiClient::ResourceAttributeUpdate.new # ResourceAttributeUpdate | 
opts = {
  resource_id: 'resource_id_example' # String | 
}

begin
  # Update User Attribute
  result = api_instance.update_user_attribute(proj_id, env_id, attribute_id, resource_attribute_update, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->update_user_attribute: #{e}"
end
```

#### Using the update_user_attribute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceAttributeRead>, Integer, Hash)> update_user_attribute_with_http_info(proj_id, env_id, attribute_id, resource_attribute_update, opts)

```ruby
begin
  # Update User Attribute
  data, status_code, headers = api_instance.update_user_attribute_with_http_info(proj_id, env_id, attribute_id, resource_attribute_update, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceAttributeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserAttributesApi->update_user_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **attribute_id** | **String** | Either the unique id of the attribute, or the URL-friendly key of the attribute (i.e: the \&quot;slug\&quot;). |  |
| **resource_attribute_update** | [**ResourceAttributeUpdate**](ResourceAttributeUpdate.md) |  |  |
| **resource_id** | **String** |  | [optional][default to &#39;__user&#39;] |

### Return type

[**ResourceAttributeRead**](ResourceAttributeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

