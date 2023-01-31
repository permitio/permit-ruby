# OpenapiClient::RolesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_parent_role**](RolesApi.md#add_parent_role) | **PUT** /v2/schema/{proj_id}/{env_id}/roles/{role_id}/parents/{parent_role_id} | Add Parent Role |
| [**assign_permissions_to_role**](RolesApi.md#assign_permissions_to_role) | **POST** /v2/schema/{proj_id}/{env_id}/roles/{role_id}/permissions | Assign Permissions To Role |
| [**create_role**](RolesApi.md#create_role) | **POST** /v2/schema/{proj_id}/{env_id}/roles | Create Role |
| [**delete_role**](RolesApi.md#delete_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/roles/{role_id} | Delete Role |
| [**get_role**](RolesApi.md#get_role) | **GET** /v2/schema/{proj_id}/{env_id}/roles/{role_id} | Get Role |
| [**list_roles**](RolesApi.md#list_roles) | **GET** /v2/schema/{proj_id}/{env_id}/roles | List Roles |
| [**remove_parent_role**](RolesApi.md#remove_parent_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/roles/{role_id}/parents/{parent_role_id} | Remove Parent Role |
| [**remove_permissions_from_role**](RolesApi.md#remove_permissions_from_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/roles/{role_id}/permissions | Remove Permissions From Role |
| [**update_role**](RolesApi.md#update_role) | **PATCH** /v2/schema/{proj_id}/{env_id}/roles/{role_id} | Update Role |


## add_parent_role

> <RoleRead> add_parent_role(proj_id, env_id, role_id, parent_role_id)

Add Parent Role

This endpoint is part of the role hierarchy feature.  Makes role with id `role_id` extend the role with id `parent_role_id`. In other words, `role_id` will automatically be assigned any permissions that are granted to `parent_role_id`.  We can say the `role_id` **extends** `parent_role_id` or **inherits** from `parent_role_id`.  If `role_id` is already an ancestor of `parent_role_id`, the request will fail with HTTP 400 to prevent a cycle in the role hierarchy.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
parent_role_id = 'parent_role_id_example' # String | Either the unique id of the parent role, or the URL-friendly key of the parent role (i.e: the \"slug\").

begin
  # Add Parent Role
  result = api_instance.add_parent_role(proj_id, env_id, role_id, parent_role_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->add_parent_role: #{e}"
end
```

#### Using the add_parent_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleRead>, Integer, Hash)> add_parent_role_with_http_info(proj_id, env_id, role_id, parent_role_id)

```ruby
begin
  # Add Parent Role
  data, status_code, headers = api_instance.add_parent_role_with_http_info(proj_id, env_id, role_id, parent_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->add_parent_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **parent_role_id** | **String** | Either the unique id of the parent role, or the URL-friendly key of the parent role (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**RoleRead**](RoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## assign_permissions_to_role

> <RoleRead> assign_permissions_to_role(proj_id, env_id, role_id, add_role_permissions)

Assign Permissions To Role

Assign permissions to role.  If some of the permissions specified are already unassigned, will skip them.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
add_role_permissions = OpenapiClient::AddRolePermissions.new({permissions: ['permissions_example']}) # AddRolePermissions | 

begin
  # Assign Permissions To Role
  result = api_instance.assign_permissions_to_role(proj_id, env_id, role_id, add_role_permissions)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->assign_permissions_to_role: #{e}"
end
```

#### Using the assign_permissions_to_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleRead>, Integer, Hash)> assign_permissions_to_role_with_http_info(proj_id, env_id, role_id, add_role_permissions)

```ruby
begin
  # Assign Permissions To Role
  data, status_code, headers = api_instance.assign_permissions_to_role_with_http_info(proj_id, env_id, role_id, add_role_permissions)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->assign_permissions_to_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **add_role_permissions** | [**AddRolePermissions**](AddRolePermissions.md) |  |  |

### Return type

[**RoleRead**](RoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_role

> <RoleRead> create_role(proj_id, env_id, role_create)

Create Role

Creates a new tenant role.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_create = OpenapiClient::RoleCreate.new({key: 'key_example', name: 'name_example'}) # RoleCreate | 

begin
  # Create Role
  result = api_instance.create_role(proj_id, env_id, role_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->create_role: #{e}"
end
```

#### Using the create_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleRead>, Integer, Hash)> create_role_with_http_info(proj_id, env_id, role_create)

```ruby
begin
  # Create Role
  data, status_code, headers = api_instance.create_role_with_http_info(proj_id, env_id, role_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->create_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_create** | [**RoleCreate**](RoleCreate.md) |  |  |

### Return type

[**RoleRead**](RoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_role

> delete_role(proj_id, env_id, role_id)

Delete Role

Deletes a tenant role and all its related data. This includes any permissions granted to said role.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").

begin
  # Delete Role
  api_instance.delete_role(proj_id, env_id, role_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->delete_role: #{e}"
end
```

#### Using the delete_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_role_with_http_info(proj_id, env_id, role_id)

```ruby
begin
  # Delete Role
  data, status_code, headers = api_instance.delete_role_with_http_info(proj_id, env_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->delete_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role

> <RoleRead> get_role(proj_id, env_id, role_id)

Get Role

Gets a single tenant role, if such role exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").

begin
  # Get Role
  result = api_instance.get_role(proj_id, env_id, role_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->get_role: #{e}"
end
```

#### Using the get_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleRead>, Integer, Hash)> get_role_with_http_info(proj_id, env_id, role_id)

```ruby
begin
  # Get Role
  data, status_code, headers = api_instance.get_role_with_http_info(proj_id, env_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->get_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**RoleRead**](RoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_roles

> <Array<RoleRead>> list_roles(proj_id, env_id, opts)

List Roles

Lists all tenant roles.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Roles
  result = api_instance.list_roles(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->list_roles: #{e}"
end
```

#### Using the list_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RoleRead>>, Integer, Hash)> list_roles_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Roles
  data, status_code, headers = api_instance.list_roles_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RoleRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->list_roles_with_http_info: #{e}"
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

[**Array&lt;RoleRead&gt;**](RoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_parent_role

> <RoleRead> remove_parent_role(proj_id, env_id, role_id, parent_role_id)

Remove Parent Role

This endpoint is part of the role hierarchy feature.  Removes `parent_role_id` from the list of parent roles of role with id `role_id`. In other words, `role_id` will no longer be automatically assigned permissions that are granted to `parent_role_id`.  We can say the `role_id` **not longer extends** `parent_role_id` or **no longer inherits** from `parent_role_id`.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
parent_role_id = 'parent_role_id_example' # String | Either the unique id of the parent role, or the URL-friendly key of the parent role (i.e: the \"slug\").

begin
  # Remove Parent Role
  result = api_instance.remove_parent_role(proj_id, env_id, role_id, parent_role_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->remove_parent_role: #{e}"
end
```

#### Using the remove_parent_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleRead>, Integer, Hash)> remove_parent_role_with_http_info(proj_id, env_id, role_id, parent_role_id)

```ruby
begin
  # Remove Parent Role
  data, status_code, headers = api_instance.remove_parent_role_with_http_info(proj_id, env_id, role_id, parent_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->remove_parent_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **parent_role_id** | **String** | Either the unique id of the parent role, or the URL-friendly key of the parent role (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**RoleRead**](RoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_permissions_from_role

> <RoleRead> remove_permissions_from_role(proj_id, env_id, role_id, remove_role_permissions)

Remove Permissions From Role

Remove permissions from role.  If some of the permissions specified are already unassigned, will skip them.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
remove_role_permissions = OpenapiClient::RemoveRolePermissions.new({permissions: ['permissions_example']}) # RemoveRolePermissions | 

begin
  # Remove Permissions From Role
  result = api_instance.remove_permissions_from_role(proj_id, env_id, role_id, remove_role_permissions)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->remove_permissions_from_role: #{e}"
end
```

#### Using the remove_permissions_from_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleRead>, Integer, Hash)> remove_permissions_from_role_with_http_info(proj_id, env_id, role_id, remove_role_permissions)

```ruby
begin
  # Remove Permissions From Role
  data, status_code, headers = api_instance.remove_permissions_from_role_with_http_info(proj_id, env_id, role_id, remove_role_permissions)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->remove_permissions_from_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **remove_role_permissions** | [**RemoveRolePermissions**](RemoveRolePermissions.md) |  |  |

### Return type

[**RoleRead**](RoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_role

> <RoleRead> update_role(proj_id, env_id, role_id, role_update)

Update Role

Partially updates a tenant role. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
role_update = OpenapiClient::RoleUpdate.new # RoleUpdate | 

begin
  # Update Role
  result = api_instance.update_role(proj_id, env_id, role_id, role_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->update_role: #{e}"
end
```

#### Using the update_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleRead>, Integer, Hash)> update_role_with_http_info(proj_id, env_id, role_id, role_update)

```ruby
begin
  # Update Role
  data, status_code, headers = api_instance.update_role_with_http_info(proj_id, env_id, role_id, role_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->update_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **role_update** | [**RoleUpdate**](RoleUpdate.md) |  |  |

### Return type

[**RoleRead**](RoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

