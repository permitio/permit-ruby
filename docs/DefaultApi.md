# OpenapiClient::DefaultApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dummy**](DefaultApi.md#dummy) | **GET** /v2/stress/dummy | Dummy |
| [**dummy_db**](DefaultApi.md#dummy_db) | **GET** /v2/stress/db/dummy | Dummy Db |
| [**get_organization_v2_stress_db_organization_get**](DefaultApi.md#get_organization_v2_stress_db_organization_get) | **GET** /v2/stress/db/organization | Get Organization |
| [**get_organization_with_authn**](DefaultApi.md#get_organization_with_authn) | **GET** /v2/stress/db/organization_auth | Get Organization With Authn |
| [**get_organization_with_authz**](DefaultApi.md#get_organization_with_authz) | **GET** /v2/stress/db/organization_authz | Get Organization With Authz |


## dummy

> Object dummy

Dummy

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new

begin
  # Dummy
  result = api_instance.dummy
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->dummy: #{e}"
end
```

#### Using the dummy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> dummy_with_http_info

```ruby
begin
  # Dummy
  data, status_code, headers = api_instance.dummy_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->dummy_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dummy_db

> Object dummy_db

Dummy Db

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new

begin
  # Dummy Db
  result = api_instance.dummy_db
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->dummy_db: #{e}"
end
```

#### Using the dummy_db_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> dummy_db_with_http_info

```ruby
begin
  # Dummy Db
  data, status_code, headers = api_instance.dummy_db_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->dummy_db_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_v2_stress_db_organization_get

> <OrganizationRead> get_organization_v2_stress_db_organization_get

Get Organization

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new

begin
  # Get Organization
  result = api_instance.get_organization_v2_stress_db_organization_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_organization_v2_stress_db_organization_get: #{e}"
end
```

#### Using the get_organization_v2_stress_db_organization_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationRead>, Integer, Hash)> get_organization_v2_stress_db_organization_get_with_http_info

```ruby
begin
  # Get Organization
  data, status_code, headers = api_instance.get_organization_v2_stress_db_organization_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_organization_v2_stress_db_organization_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OrganizationRead**](OrganizationRead.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_with_authn

> <OrganizationRead> get_organization_with_authn

Get Organization With Authn

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new

begin
  # Get Organization With Authn
  result = api_instance.get_organization_with_authn
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_organization_with_authn: #{e}"
end
```

#### Using the get_organization_with_authn_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationRead>, Integer, Hash)> get_organization_with_authn_with_http_info

```ruby
begin
  # Get Organization With Authn
  data, status_code, headers = api_instance.get_organization_with_authn_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_organization_with_authn_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OrganizationRead**](OrganizationRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_with_authz

> <OrganizationRead> get_organization_with_authz

Get Organization With Authz

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DefaultApi.new

begin
  # Get Organization With Authz
  result = api_instance.get_organization_with_authz
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_organization_with_authz: #{e}"
end
```

#### Using the get_organization_with_authz_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationRead>, Integer, Hash)> get_organization_with_authz_with_http_info

```ruby
begin
  # Get Organization With Authz
  data, status_code, headers = api_instance.get_organization_with_authz_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->get_organization_with_authz_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OrganizationRead**](OrganizationRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

