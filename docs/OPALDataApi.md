# OpenapiClient::OPALDataApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_data**](OPALDataApi.md#get_all_data) | **GET** /v2/internal/opal_data/{org_id}/{proj_id}/{env_id} | Get All Data |
| [**get_data_for_role**](OPALDataApi.md#get_data_for_role) | **GET** /v2/internal/opal_data/{org_id}/{proj_id}/{env_id}/roles/{role_id} | Get Data For Role |
| [**get_data_for_set_rule**](OPALDataApi.md#get_data_for_set_rule) | **GET** /v2/internal/opal_data/{org_id}/{proj_id}/{env_id}/condition_set_rules/{user_set_id}/{resource_set_id} | Get Data For Set Rule |
| [**get_data_for_user**](OPALDataApi.md#get_data_for_user) | **GET** /v2/internal/opal_data/{org_id}/{proj_id}/{env_id}/users/{user_id} | Get Data For User |


## get_all_data

> <FullData> get_all_data(org_id, proj_id, env_id, opts)

Get All Data

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OPALDataApi.new
org_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").
proj_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  __internal_update_cache: true # Boolean | 
}

begin
  # Get All Data
  result = api_instance.get_all_data(org_id, proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OPALDataApi->get_all_data: #{e}"
end
```

#### Using the get_all_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FullData>, Integer, Hash)> get_all_data_with_http_info(org_id, proj_id, env_id, opts)

```ruby
begin
  # Get All Data
  data, status_code, headers = api_instance.get_all_data_with_http_info(org_id, proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FullData>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OPALDataApi->get_all_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **__internal_update_cache** | **Boolean** |  | [optional][default to false] |

### Return type

[**FullData**](FullData.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_for_role

> <RoleData> get_data_for_role(org_id, proj_id, env_id, role_id)

Get Data For Role

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OPALDataApi.new
org_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").
proj_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Data For Role
  result = api_instance.get_data_for_role(org_id, proj_id, env_id, role_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OPALDataApi->get_data_for_role: #{e}"
end
```

#### Using the get_data_for_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleData>, Integer, Hash)> get_data_for_role_with_http_info(org_id, proj_id, env_id, role_id)

```ruby
begin
  # Get Data For Role
  data, status_code, headers = api_instance.get_data_for_role_with_http_info(org_id, proj_id, env_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleData>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OPALDataApi->get_data_for_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** |  |  |

### Return type

[**RoleData**](RoleData.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_for_set_rule

> Hash&lt;String, Array&lt;String&gt;&gt; get_data_for_set_rule(org_id, proj_id, env_id, user_set_id, resource_set_id)

Get Data For Set Rule

return permission assignment data between user sets and resource sets (i.e: condition set rules data)

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OPALDataApi.new
org_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").
proj_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_set_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
resource_set_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Data For Set Rule
  result = api_instance.get_data_for_set_rule(org_id, proj_id, env_id, user_set_id, resource_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OPALDataApi->get_data_for_set_rule: #{e}"
end
```

#### Using the get_data_for_set_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Array&lt;String&gt;&gt;, Integer, Hash)> get_data_for_set_rule_with_http_info(org_id, proj_id, env_id, user_set_id, resource_set_id)

```ruby
begin
  # Get Data For Set Rule
  data, status_code, headers = api_instance.get_data_for_set_rule_with_http_info(org_id, proj_id, env_id, user_set_id, resource_set_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Array&lt;String&gt;&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling OPALDataApi->get_data_for_set_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_set_id** | **String** |  |  |
| **resource_set_id** | **String** |  |  |

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_for_user

> <UserData> get_data_for_user(org_id, proj_id, env_id, user_id)

Get Data For User

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OPALDataApi.new
org_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").
proj_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Data For User
  result = api_instance.get_data_for_user(org_id, proj_id, env_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OPALDataApi->get_data_for_user: #{e}"
end
```

#### Using the get_data_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserData>, Integer, Hash)> get_data_for_user_with_http_info(org_id, proj_id, env_id, user_id)

```ruby
begin
  # Get Data For User
  data, status_code, headers = api_instance.get_data_for_user_with_http_info(org_id, proj_id, env_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserData>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OPALDataApi->get_data_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** |  |  |

### Return type

[**UserData**](UserData.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

