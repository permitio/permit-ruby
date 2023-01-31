# OpenapiClient::TenantsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tenant**](TenantsApi.md#create_tenant) | **POST** /v2/facts/{proj_id}/{env_id}/tenants | Create Tenant |
| [**delete_tenant**](TenantsApi.md#delete_tenant) | **DELETE** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id} | Delete Tenant |
| [**delete_tenant_user**](TenantsApi.md#delete_tenant_user) | **DELETE** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id}/users/{user_id} | Delete Tenant User |
| [**get_tenant**](TenantsApi.md#get_tenant) | **GET** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id} | Get Tenant |
| [**list_tenant_users**](TenantsApi.md#list_tenant_users) | **GET** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id}/users | List Tenant Users |
| [**list_tenants**](TenantsApi.md#list_tenants) | **GET** /v2/facts/{proj_id}/{env_id}/tenants | List Tenants |
| [**update_tenant**](TenantsApi.md#update_tenant) | **PATCH** /v2/facts/{proj_id}/{env_id}/tenants/{tenant_id} | Update Tenant |


## create_tenant

> <TenantRead> create_tenant(proj_id, env_id, tenant_create)

Create Tenant

Creates a new tenant inside the Permit.io system.  If the tenant is already created: will return 200 instead of 201, and will return the existing tenant object in the response body.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
tenant_create = OpenapiClient::TenantCreate.new({key: 'key_example', name: 'name_example'}) # TenantCreate | 

begin
  # Create Tenant
  result = api_instance.create_tenant(proj_id, env_id, tenant_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->create_tenant: #{e}"
end
```

#### Using the create_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantRead>, Integer, Hash)> create_tenant_with_http_info(proj_id, env_id, tenant_create)

```ruby
begin
  # Create Tenant
  data, status_code, headers = api_instance.create_tenant_with_http_info(proj_id, env_id, tenant_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->create_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **tenant_create** | [**TenantCreate**](TenantCreate.md) |  |  |

### Return type

[**TenantRead**](TenantRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tenant

> delete_tenant(proj_id, env_id, tenant_id)

Delete Tenant

Deletes the tenant and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
tenant_id = 'tenant_id_example' # String | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \"slug\").

begin
  # Delete Tenant
  api_instance.delete_tenant(proj_id, env_id, tenant_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->delete_tenant: #{e}"
end
```

#### Using the delete_tenant_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tenant_with_http_info(proj_id, env_id, tenant_id)

```ruby
begin
  # Delete Tenant
  data, status_code, headers = api_instance.delete_tenant_with_http_info(proj_id, env_id, tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->delete_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **tenant_id** | **String** | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tenant_user

> delete_tenant_user(proj_id, env_id, tenant_id, user_id)

Delete Tenant User

Deletes a user under a tenant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
tenant_id = 'tenant_id_example' # String | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").

begin
  # Delete Tenant User
  api_instance.delete_tenant_user(proj_id, env_id, tenant_id, user_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->delete_tenant_user: #{e}"
end
```

#### Using the delete_tenant_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tenant_user_with_http_info(proj_id, env_id, tenant_id, user_id)

```ruby
begin
  # Delete Tenant User
  data, status_code, headers = api_instance.delete_tenant_user_with_http_info(proj_id, env_id, tenant_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->delete_tenant_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **tenant_id** | **String** | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant

> <TenantRead> get_tenant(proj_id, env_id, tenant_id)

Get Tenant

Gets a tenant, if such tenant exists. Otherwise returns 404.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
tenant_id = 'tenant_id_example' # String | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \"slug\").

begin
  # Get Tenant
  result = api_instance.get_tenant(proj_id, env_id, tenant_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->get_tenant: #{e}"
end
```

#### Using the get_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantRead>, Integer, Hash)> get_tenant_with_http_info(proj_id, env_id, tenant_id)

```ruby
begin
  # Get Tenant
  data, status_code, headers = api_instance.get_tenant_with_http_info(proj_id, env_id, tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->get_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **tenant_id** | **String** | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**TenantRead**](TenantRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tenant_users

> <PaginatedResultUserRead> list_tenant_users(proj_id, tenant_id, env_id, opts)

List Tenant Users

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
tenant_id = 'tenant_id_example' # String | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  search: 'search_example', # String | Text search for the email field
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Tenant Users
  result = api_instance.list_tenant_users(proj_id, tenant_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->list_tenant_users: #{e}"
end
```

#### Using the list_tenant_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResultUserRead>, Integer, Hash)> list_tenant_users_with_http_info(proj_id, tenant_id, env_id, opts)

```ruby
begin
  # List Tenant Users
  data, status_code, headers = api_instance.list_tenant_users_with_http_info(proj_id, tenant_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResultUserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->list_tenant_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **tenant_id** | **String** | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **search** | **String** | Text search for the email field | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**PaginatedResultUserRead**](PaginatedResultUserRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tenants

> <Array<TenantRead>> list_tenants(proj_id, env_id, opts)

List Tenants

Lists all the tenants defined within an environment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  search: 'search_example', # String | Text search for the tenant name or key
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Tenants
  result = api_instance.list_tenants(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->list_tenants: #{e}"
end
```

#### Using the list_tenants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TenantRead>>, Integer, Hash)> list_tenants_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Tenants
  data, status_code, headers = api_instance.list_tenants_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TenantRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->list_tenants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **search** | **String** | Text search for the tenant name or key | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;TenantRead&gt;**](TenantRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tenant

> <TenantRead> update_tenant(proj_id, env_id, tenant_id, tenant_update)

Update Tenant

Partially updates the tenant definition. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TenantsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
tenant_id = 'tenant_id_example' # String | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \"slug\").
tenant_update = OpenapiClient::TenantUpdate.new # TenantUpdate | 

begin
  # Update Tenant
  result = api_instance.update_tenant(proj_id, env_id, tenant_id, tenant_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->update_tenant: #{e}"
end
```

#### Using the update_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantRead>, Integer, Hash)> update_tenant_with_http_info(proj_id, env_id, tenant_id, tenant_update)

```ruby
begin
  # Update Tenant
  data, status_code, headers = api_instance.update_tenant_with_http_info(proj_id, env_id, tenant_id, tenant_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TenantsApi->update_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **tenant_id** | **String** | Either the unique id of the tenant, or the URL-friendly key of the tenant (i.e: the \&quot;slug\&quot;). |  |
| **tenant_update** | [**TenantUpdate**](TenantUpdate.md) |  |  |

### Return type

[**TenantRead**](TenantRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

