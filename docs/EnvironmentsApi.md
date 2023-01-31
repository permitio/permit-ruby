# OpenapiClient::EnvironmentsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_environment**](EnvironmentsApi.md#create_environment) | **POST** /v2/projects/{proj_id}/envs | Create Environment |
| [**delete_environment**](EnvironmentsApi.md#delete_environment) | **DELETE** /v2/projects/{proj_id}/envs/{env_id} | Delete Environment |
| [**get_environment**](EnvironmentsApi.md#get_environment) | **GET** /v2/projects/{proj_id}/envs/{env_id} | Get Environment |
| [**list_environments**](EnvironmentsApi.md#list_environments) | **GET** /v2/projects/{proj_id}/envs | List Environments |
| [**stats_environments**](EnvironmentsApi.md#stats_environments) | **GET** /v2/projects/{proj_id}/envs/{env_id}/stats | Stats Environments |
| [**update_environment**](EnvironmentsApi.md#update_environment) | **PATCH** /v2/projects/{proj_id}/envs/{env_id} | Update Environment |


## create_environment

> <EnvironmentRead> create_environment(proj_id, environment_create)

Create Environment

Creates a new environment under a given project.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
environment_create = OpenapiClient::EnvironmentCreate.new({key: 'key_example', name: 'name_example'}) # EnvironmentCreate | 

begin
  # Create Environment
  result = api_instance.create_environment(proj_id, environment_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->create_environment: #{e}"
end
```

#### Using the create_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentRead>, Integer, Hash)> create_environment_with_http_info(proj_id, environment_create)

```ruby
begin
  # Create Environment
  data, status_code, headers = api_instance.create_environment_with_http_info(proj_id, environment_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->create_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **environment_create** | [**EnvironmentCreate**](EnvironmentCreate.md) |  |  |

### Return type

[**EnvironmentRead**](EnvironmentRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_environment

> delete_environment(proj_id, env_id)

Delete Environment

Deletes an environment and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").

begin
  # Delete Environment
  api_instance.delete_environment(proj_id, env_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->delete_environment: #{e}"
end
```

#### Using the delete_environment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_environment_with_http_info(proj_id, env_id)

```ruby
begin
  # Delete Environment
  data, status_code, headers = api_instance.delete_environment_with_http_info(proj_id, env_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->delete_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_environment

> <EnvironmentRead> get_environment(proj_id, env_id)

Get Environment

Gets a single environment matching the given env_id, if such environment exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").

begin
  # Get Environment
  result = api_instance.get_environment(proj_id, env_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->get_environment: #{e}"
end
```

#### Using the get_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentRead>, Integer, Hash)> get_environment_with_http_info(proj_id, env_id)

```ruby
begin
  # Get Environment
  data, status_code, headers = api_instance.get_environment_with_http_info(proj_id, env_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->get_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**EnvironmentRead**](EnvironmentRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_environments

> <Array<EnvironmentRead>> list_environments(proj_id, opts)

List Environments

Lists all the environments under a given project.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Environments
  result = api_instance.list_environments(proj_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->list_environments: #{e}"
end
```

#### Using the list_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EnvironmentRead>>, Integer, Hash)> list_environments_with_http_info(proj_id, opts)

```ruby
begin
  # List Environments
  data, status_code, headers = api_instance.list_environments_with_http_info(proj_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EnvironmentRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->list_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;EnvironmentRead&gt;**](EnvironmentRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stats_environments

> <EnvironmentStats> stats_environments(proj_id, env_id)

Stats Environments

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").

begin
  # Stats Environments
  result = api_instance.stats_environments(proj_id, env_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->stats_environments: #{e}"
end
```

#### Using the stats_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentStats>, Integer, Hash)> stats_environments_with_http_info(proj_id, env_id)

```ruby
begin
  # Stats Environments
  data, status_code, headers = api_instance.stats_environments_with_http_info(proj_id, env_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentStats>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->stats_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**EnvironmentStats**](EnvironmentStats.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_environment

> <EnvironmentRead> update_environment(proj_id, env_id, environment_update)

Update Environment

Updates the environment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::EnvironmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
environment_update = OpenapiClient::EnvironmentUpdate.new # EnvironmentUpdate | 

begin
  # Update Environment
  result = api_instance.update_environment(proj_id, env_id, environment_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->update_environment: #{e}"
end
```

#### Using the update_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentRead>, Integer, Hash)> update_environment_with_http_info(proj_id, env_id, environment_update)

```ruby
begin
  # Update Environment
  data, status_code, headers = api_instance.update_environment_with_http_info(proj_id, env_id, environment_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EnvironmentsApi->update_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **environment_update** | [**EnvironmentUpdate**](EnvironmentUpdate.md) |  |  |

### Return type

[**EnvironmentRead**](EnvironmentRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

