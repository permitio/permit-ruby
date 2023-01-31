# OpenapiClient::PolicyDecisionPointsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_authenticating_pdp_config_values**](PolicyDecisionPointsApi.md#get_authenticating_pdp_config_values) | **POST** /v2/pdps/me/config | Get connected PDP configuration and push state |
| [**get_authenticating_pdp_config_values_legacy**](PolicyDecisionPointsApi.md#get_authenticating_pdp_config_values_legacy) | **GET** /v2/pdps/me/config | Get connected PDP configuration |
| [**get_pdp_config_values**](PolicyDecisionPointsApi.md#get_pdp_config_values) | **GET** /v2/pdps/{proj_id}/{env_id}/configs/{pdp_id}/values | Get PDP configuration |
| [**list_pdp_configs**](PolicyDecisionPointsApi.md#list_pdp_configs) | **GET** /v2/pdps/{proj_id}/{env_id}/configs | List PDP configurations |
| [**rotate_pdp_api_key**](PolicyDecisionPointsApi.md#rotate_pdp_api_key) | **POST** /v2/pdps/{proj_id}/{env_id}/configs/{pdp_id}/rotate-api-key | Rotate PDP API Key |


## get_authenticating_pdp_config_values

> <RemoteConfig> get_authenticating_pdp_config_values(pdp_state_update)

Get connected PDP configuration and push state

Gets the configuration values for the currently authenticated PDP container.  The PDP authenticates with an API key scoped to a given Permit.io environment. The system identifies the PDP via its API key and then returns all the configuration values required for the container to run correctly.  The config values returned are considered \"overrides\", meaning they are overriding any default values given to the container by the user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
pdp_state_update = OpenapiClient::PDPStateUpdate.new({pdp_instance_id: 'pdp_instance_id_example', state: OpenapiClient::PDPState.new({api_version: 37})}) # PDPStateUpdate | 

begin
  # Get connected PDP configuration and push state
  result = api_instance.get_authenticating_pdp_config_values(pdp_state_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_authenticating_pdp_config_values: #{e}"
end
```

#### Using the get_authenticating_pdp_config_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteConfig>, Integer, Hash)> get_authenticating_pdp_config_values_with_http_info(pdp_state_update)

```ruby
begin
  # Get connected PDP configuration and push state
  data, status_code, headers = api_instance.get_authenticating_pdp_config_values_with_http_info(pdp_state_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_authenticating_pdp_config_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pdp_state_update** | [**PDPStateUpdate**](PDPStateUpdate.md) |  |  |

### Return type

[**RemoteConfig**](RemoteConfig.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_authenticating_pdp_config_values_legacy

> <RemoteConfig> get_authenticating_pdp_config_values_legacy

Get connected PDP configuration

Gets the configuration values for the currently authenticated PDP container.  The PDP authenticates with an API key scoped to a given Permit.io environment. The system identifies the PDP via its API key and then returns all the configuration values required for the container to run correctly.  The config values returned are considered \"overrides\", meaning they are overriding any default values given to the container by the user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new

begin
  # Get connected PDP configuration
  result = api_instance.get_authenticating_pdp_config_values_legacy
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_authenticating_pdp_config_values_legacy: #{e}"
end
```

#### Using the get_authenticating_pdp_config_values_legacy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteConfig>, Integer, Hash)> get_authenticating_pdp_config_values_legacy_with_http_info

```ruby
begin
  # Get connected PDP configuration
  data, status_code, headers = api_instance.get_authenticating_pdp_config_values_legacy_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_authenticating_pdp_config_values_legacy_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RemoteConfig**](RemoteConfig.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pdp_config_values

> <RemoteConfig> get_pdp_config_values(proj_id, env_id, pdp_id)

Get PDP configuration

Gets the configuration values for the PDP container with id `pdp_id`.  The config values returned are considered \"overrides\", meaning they are overriding any default values given to the container by the user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique id of the pdp

begin
  # Get PDP configuration
  result = api_instance.get_pdp_config_values(proj_id, env_id, pdp_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_pdp_config_values: #{e}"
end
```

#### Using the get_pdp_config_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteConfig>, Integer, Hash)> get_pdp_config_values_with_http_info(proj_id, env_id, pdp_id)

```ruby
begin
  # Get PDP configuration
  data, status_code, headers = api_instance.get_pdp_config_values_with_http_info(proj_id, env_id, pdp_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->get_pdp_config_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **pdp_id** | **String** | The unique id of the pdp |  |

### Return type

[**RemoteConfig**](RemoteConfig.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_pdp_configs

> <Array<PDPConfigRead>> list_pdp_configs(proj_id, env_id, opts)

List PDP configurations

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List PDP configurations
  result = api_instance.list_pdp_configs(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->list_pdp_configs: #{e}"
end
```

#### Using the list_pdp_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PDPConfigRead>>, Integer, Hash)> list_pdp_configs_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List PDP configurations
  data, status_code, headers = api_instance.list_pdp_configs_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PDPConfigRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->list_pdp_configs_with_http_info: #{e}"
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

[**Array&lt;PDPConfigRead&gt;**](PDPConfigRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_pdp_api_key

> <PDPConfigRead> rotate_pdp_api_key(proj_id, env_id, pdp_id)

Rotate PDP API Key

Rotates the API key of the PDP container with id `pdp_id`.  The rotation of the API key revokes the old API key and issues a new API key to the PDP.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyDecisionPointsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
pdp_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique id of the pdp

begin
  # Rotate PDP API Key
  result = api_instance.rotate_pdp_api_key(proj_id, env_id, pdp_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->rotate_pdp_api_key: #{e}"
end
```

#### Using the rotate_pdp_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PDPConfigRead>, Integer, Hash)> rotate_pdp_api_key_with_http_info(proj_id, env_id, pdp_id)

```ruby
begin
  # Rotate PDP API Key
  data, status_code, headers = api_instance.rotate_pdp_api_key_with_http_info(proj_id, env_id, pdp_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PDPConfigRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyDecisionPointsApi->rotate_pdp_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **pdp_id** | **String** | The unique id of the pdp |  |

### Return type

[**PDPConfigRead**](PDPConfigRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

