# OpenapiClient::PolicyApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_opal_data_sources**](PolicyApi.md#get_opal_data_sources) | **GET** /v2/opal/data/config | Get Opal Data Sources |
| [**get_opal_data_sources_opal_data_config_get**](PolicyApi.md#get_opal_data_sources_opal_data_config_get) | **GET** /opal/data/config | Get Opal Data Sources |


## get_opal_data_sources

> <DataSourceConfig> get_opal_data_sources(opts)

Get Opal Data Sources

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::PolicyApi.new
opts = {
  token: 'token_example' # String | 
}

begin
  # Get Opal Data Sources
  result = api_instance.get_opal_data_sources(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_opal_data_sources: #{e}"
end
```

#### Using the get_opal_data_sources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataSourceConfig>, Integer, Hash)> get_opal_data_sources_with_http_info(opts)

```ruby
begin
  # Get Opal Data Sources
  data, status_code, headers = api_instance.get_opal_data_sources_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataSourceConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_opal_data_sources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  | [optional] |

### Return type

[**DataSourceConfig**](DataSourceConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_opal_data_sources_opal_data_config_get

> <DataSourceConfig> get_opal_data_sources_opal_data_config_get(opts)

Get Opal Data Sources

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::PolicyApi.new
opts = {
  token: 'token_example' # String | 
}

begin
  # Get Opal Data Sources
  result = api_instance.get_opal_data_sources_opal_data_config_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_opal_data_sources_opal_data_config_get: #{e}"
end
```

#### Using the get_opal_data_sources_opal_data_config_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DataSourceConfig>, Integer, Hash)> get_opal_data_sources_opal_data_config_get_with_http_info(opts)

```ruby
begin
  # Get Opal Data Sources
  data, status_code, headers = api_instance.get_opal_data_sources_opal_data_config_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DataSourceConfig>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyApi->get_opal_data_sources_opal_data_config_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  | [optional] |

### Return type

[**DataSourceConfig**](DataSourceConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

