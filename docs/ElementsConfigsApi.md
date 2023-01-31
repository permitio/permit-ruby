# OpenapiClient::ElementsConfigsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_elements_config**](ElementsConfigsApi.md#create_elements_config) | **POST** /v2/elements/{proj_id}/{env_id}/config | Create Elements Config |
| [**delete_elements_config**](ElementsConfigsApi.md#delete_elements_config) | **DELETE** /v2/elements/{proj_id}/{env_id}/{elements_config_id} | Delete Elements Config |
| [**get_elements_config**](ElementsConfigsApi.md#get_elements_config) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id} | Get Elements Config |
| [**get_elements_config_runtime**](ElementsConfigsApi.md#get_elements_config_runtime) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/runtime | Get Elements Config Runtime |
| [**get_elements_type_config**](ElementsConfigsApi.md#get_elements_type_config) | **GET** /v2/elements/{proj_id}/{env_id}/{element_type} | Get Elements Type Config |
| [**list_elements_configs**](ElementsConfigsApi.md#list_elements_configs) | **GET** /v2/elements/{proj_id}/{env_id}/config | List Elements Configs |
| [**update_elements_config**](ElementsConfigsApi.md#update_elements_config) | **PATCH** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id} | Update Elements Config |
| [**update_elements_type_permissions**](ElementsConfigsApi.md#update_elements_type_permissions) | **PATCH** /v2/elements/{proj_id}/{env_id}/{element_type} | Update Elements Type Permissions |


## create_elements_config

> <ElementsConfigRead> create_elements_config(proj_id, env_id, elements_config_create)

Create Elements Config

Creates a new elements_config under the active organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ElementsConfigsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_create = OpenapiClient::ElementsConfigCreate.new({key: 'key_example', name: 'name_example', elements_type: OpenapiClient::ElementsType::USER_MANAGEMENT, settings: { key: OpenapiClient::Settings.new}, roles_to_levels: { key: ['inner_example']}}) # ElementsConfigCreate | 

begin
  # Create Elements Config
  result = api_instance.create_elements_config(proj_id, env_id, elements_config_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->create_elements_config: #{e}"
end
```

#### Using the create_elements_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElementsConfigRead>, Integer, Hash)> create_elements_config_with_http_info(proj_id, env_id, elements_config_create)

```ruby
begin
  # Create Elements Config
  data, status_code, headers = api_instance.create_elements_config_with_http_info(proj_id, env_id, elements_config_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElementsConfigRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->create_elements_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_create** | [**ElementsConfigCreate**](ElementsConfigCreate.md) |  |  |

### Return type

[**ElementsConfigRead**](ElementsConfigRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_elements_config

> delete_elements_config(elements_config_id, proj_id, env_id)

Delete Elements Config

Deletes the elements_config and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ElementsConfigsApi.new
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").

begin
  # Delete Elements Config
  api_instance.delete_elements_config(elements_config_id, proj_id, env_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->delete_elements_config: #{e}"
end
```

#### Using the delete_elements_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_elements_config_with_http_info(elements_config_id, proj_id, env_id)

```ruby
begin
  # Delete Elements Config
  data, status_code, headers = api_instance.delete_elements_config_with_http_info(elements_config_id, proj_id, env_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->delete_elements_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_elements_config

> <ElementsConfigRead> get_elements_config(proj_id, env_id, elements_config_id)

Get Elements Config

Gets a single elements_config matching the given elements_config_id, if such elements_config exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ElementsConfigsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").

begin
  # Get Elements Config
  result = api_instance.get_elements_config(proj_id, env_id, elements_config_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->get_elements_config: #{e}"
end
```

#### Using the get_elements_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElementsConfigRead>, Integer, Hash)> get_elements_config_with_http_info(proj_id, env_id, elements_config_id)

```ruby
begin
  # Get Elements Config
  data, status_code, headers = api_instance.get_elements_config_with_http_info(proj_id, env_id, elements_config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElementsConfigRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->get_elements_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ElementsConfigRead**](ElementsConfigRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_elements_config_runtime

> <ElementsConfigRuntimeRead> get_elements_config_runtime(proj_id, env_id, elements_config_id)

Get Elements Config Runtime

Gets a single elements_config matching the given elements_config_id, if such elements_config exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ElementsConfigsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").

begin
  # Get Elements Config Runtime
  result = api_instance.get_elements_config_runtime(proj_id, env_id, elements_config_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->get_elements_config_runtime: #{e}"
end
```

#### Using the get_elements_config_runtime_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElementsConfigRuntimeRead>, Integer, Hash)> get_elements_config_runtime_with_http_info(proj_id, env_id, elements_config_id)

```ruby
begin
  # Get Elements Config Runtime
  data, status_code, headers = api_instance.get_elements_config_runtime_with_http_info(proj_id, env_id, elements_config_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElementsConfigRuntimeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->get_elements_config_runtime_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ElementsConfigRuntimeRead**](ElementsConfigRuntimeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_elements_type_config

> <ElementsEnvTypeRead> get_elements_type_config(proj_id, env_id, element_type)

Get Elements Type Config

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ElementsConfigsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
element_type = OpenapiClient::ElementsType::USER_MANAGEMENT # ElementsType | Either the unique id of the elements_type, or the URL-friendly key of the elements_type (i.e: the \"slug\").

begin
  # Get Elements Type Config
  result = api_instance.get_elements_type_config(proj_id, env_id, element_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->get_elements_type_config: #{e}"
end
```

#### Using the get_elements_type_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElementsEnvTypeRead>, Integer, Hash)> get_elements_type_config_with_http_info(proj_id, env_id, element_type)

```ruby
begin
  # Get Elements Type Config
  data, status_code, headers = api_instance.get_elements_type_config_with_http_info(proj_id, env_id, element_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElementsEnvTypeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->get_elements_type_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **element_type** | [**ElementsType**](.md) | Either the unique id of the elements_type, or the URL-friendly key of the elements_type (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ElementsEnvTypeRead**](ElementsEnvTypeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_elements_configs

> <PaginatedResultElementsConfigRead> list_elements_configs(proj_id, env_id, opts)

List Elements Configs

Lists all the elements_configs under the active organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ElementsConfigsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Elements Configs
  result = api_instance.list_elements_configs(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->list_elements_configs: #{e}"
end
```

#### Using the list_elements_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResultElementsConfigRead>, Integer, Hash)> list_elements_configs_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Elements Configs
  data, status_code, headers = api_instance.list_elements_configs_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResultElementsConfigRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->list_elements_configs_with_http_info: #{e}"
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

[**PaginatedResultElementsConfigRead**](PaginatedResultElementsConfigRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_elements_config

> <ElementsConfigRead> update_elements_config(elements_config_id, proj_id, env_id, elements_config_update)

Update Elements Config

Updates the elements_config.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ElementsConfigsApi.new
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_update = OpenapiClient::ElementsConfigUpdate.new({roles_to_levels: { key: ['inner_example']}}) # ElementsConfigUpdate | 

begin
  # Update Elements Config
  result = api_instance.update_elements_config(elements_config_id, proj_id, env_id, elements_config_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->update_elements_config: #{e}"
end
```

#### Using the update_elements_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElementsConfigRead>, Integer, Hash)> update_elements_config_with_http_info(elements_config_id, proj_id, env_id, elements_config_update)

```ruby
begin
  # Update Elements Config
  data, status_code, headers = api_instance.update_elements_config_with_http_info(elements_config_id, proj_id, env_id, elements_config_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElementsConfigRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->update_elements_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_update** | [**ElementsConfigUpdate**](ElementsConfigUpdate.md) |  |  |

### Return type

[**ElementsConfigRead**](ElementsConfigRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_elements_type_permissions

> <ElementsEnvTypeRead> update_elements_type_permissions(element_type, proj_id, env_id, elements_env_type_update)

Update Elements Type Permissions

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ElementsConfigsApi.new
element_type = OpenapiClient::ElementsType::USER_MANAGEMENT # ElementsType | Either the unique id of the elements_type, or the URL-friendly key of the elements_type (i.e: the \"slug\").
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_env_type_update = OpenapiClient::ElementsEnvTypeUpdate.new # ElementsEnvTypeUpdate | 

begin
  # Update Elements Type Permissions
  result = api_instance.update_elements_type_permissions(element_type, proj_id, env_id, elements_env_type_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->update_elements_type_permissions: #{e}"
end
```

#### Using the update_elements_type_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElementsEnvTypeRead>, Integer, Hash)> update_elements_type_permissions_with_http_info(element_type, proj_id, env_id, elements_env_type_update)

```ruby
begin
  # Update Elements Type Permissions
  data, status_code, headers = api_instance.update_elements_type_permissions_with_http_info(element_type, proj_id, env_id, elements_env_type_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElementsEnvTypeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ElementsConfigsApi->update_elements_type_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **element_type** | [**ElementsType**](.md) | Either the unique id of the elements_type, or the URL-friendly key of the elements_type (i.e: the \&quot;slug\&quot;). |  |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_env_type_update** | [**ElementsEnvTypeUpdate**](ElementsEnvTypeUpdate.md) |  |  |

### Return type

[**ElementsEnvTypeRead**](ElementsEnvTypeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

