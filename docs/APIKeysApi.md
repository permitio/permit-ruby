# OpenapiClient::APIKeysApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](APIKeysApi.md#create_api_key) | **POST** /v2/api-key | Create Api Key |
| [**delete_api_key**](APIKeysApi.md#delete_api_key) | **DELETE** /v2/api-key/{api_key_id} | Delete Api Key |
| [**get_api_key**](APIKeysApi.md#get_api_key) | **GET** /v2/api-key/{api_key_id} | Get Api Key |
| [**get_api_key_scope**](APIKeysApi.md#get_api_key_scope) | **GET** /v2/api-key/scope | Get Api Key Scope |
| [**get_environment_api_key**](APIKeysApi.md#get_environment_api_key) | **GET** /v2/api-key/{proj_id}/{env_id} | Get Environment Api Key |
| [**list_api_keys**](APIKeysApi.md#list_api_keys) | **GET** /v2/api-key | List Api Keys |


## create_api_key

> <APIKeyRead> create_api_key(api_key_create)

Create Api Key

Creates a new api_key under the active organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::APIKeysApi.new
api_key_create = OpenapiClient::APIKeyCreate.new({organization_id: 'organization_id_example'}) # APIKeyCreate | 

begin
  # Create Api Key
  result = api_instance.create_api_key(api_key_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->create_api_key: #{e}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIKeyRead>, Integer, Hash)> create_api_key_with_http_info(api_key_create)

```ruby
begin
  # Create Api Key
  data, status_code, headers = api_instance.create_api_key_with_http_info(api_key_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIKeyRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->create_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_create** | [**APIKeyCreate**](APIKeyCreate.md) |  |  |

### Return type

[**APIKeyRead**](APIKeyRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> delete_api_key(api_key_id)

Delete Api Key

Deletes the api_key and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::APIKeysApi.new
api_key_id = 'api_key_id_example' # String | The unique id of the API key

begin
  # Delete Api Key
  api_instance.delete_api_key(api_key_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->delete_api_key: #{e}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_api_key_with_http_info(api_key_id)

```ruby
begin
  # Delete Api Key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->delete_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_id** | **String** | The unique id of the API key |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_key

> <APIKeyRead> get_api_key(api_key_id)

Get Api Key

Gets a single api_key matching the given api_key_id, if such api_key exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::APIKeysApi.new
api_key_id = 'api_key_id_example' # String | The unique id of the API key

begin
  # Get Api Key
  result = api_instance.get_api_key(api_key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_api_key: #{e}"
end
```

#### Using the get_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIKeyRead>, Integer, Hash)> get_api_key_with_http_info(api_key_id)

```ruby
begin
  # Get Api Key
  data, status_code, headers = api_instance.get_api_key_with_http_info(api_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIKeyRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_id** | **String** | The unique id of the API key |  |

### Return type

[**APIKeyRead**](APIKeyRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_key_scope

> <APIKeyScopeRead> get_api_key_scope

Get Api Key Scope

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::APIKeysApi.new

begin
  # Get Api Key Scope
  result = api_instance.get_api_key_scope
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_api_key_scope: #{e}"
end
```

#### Using the get_api_key_scope_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIKeyScopeRead>, Integer, Hash)> get_api_key_scope_with_http_info

```ruby
begin
  # Get Api Key Scope
  data, status_code, headers = api_instance.get_api_key_scope_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIKeyScopeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_api_key_scope_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**APIKeyScopeRead**](APIKeyScopeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_environment_api_key

> <APIKeyRead> get_environment_api_key(proj_id, env_id)

Get Environment Api Key

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::APIKeysApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").

begin
  # Get Environment Api Key
  result = api_instance.get_environment_api_key(proj_id, env_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_environment_api_key: #{e}"
end
```

#### Using the get_environment_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIKeyRead>, Integer, Hash)> get_environment_api_key_with_http_info(proj_id, env_id)

```ruby
begin
  # Get Environment Api Key
  data, status_code, headers = api_instance.get_environment_api_key_with_http_info(proj_id, env_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIKeyRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->get_environment_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**APIKeyRead**](APIKeyRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_api_keys

> <PaginatedResultAPIKeyRead> list_api_keys(opts)

List Api Keys

Lists all the api_keys under the active organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::APIKeysApi.new
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Api Keys
  result = api_instance.list_api_keys(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->list_api_keys: #{e}"
end
```

#### Using the list_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResultAPIKeyRead>, Integer, Hash)> list_api_keys_with_http_info(opts)

```ruby
begin
  # List Api Keys
  data, status_code, headers = api_instance.list_api_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResultAPIKeyRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling APIKeysApi->list_api_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**PaginatedResultAPIKeyRead**](PaginatedResultAPIKeyRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

