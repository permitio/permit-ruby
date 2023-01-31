# OpenapiClient::ResourceRolesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_parent_resource_role**](ResourceRolesApi.md#add_parent_resource_role) | **PUT** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id}/parents/{parent_role_id} | Add Parent Role |
| [**assign_permissions_to_resource_role**](ResourceRolesApi.md#assign_permissions_to_resource_role) | **POST** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id}/permissions | Assign Permissions to Role |
| [**create_resource_role**](ResourceRolesApi.md#create_resource_role) | **POST** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles | Create Resource Role |
| [**delete_resource_role**](ResourceRolesApi.md#delete_resource_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id} | Delete Resource Role |
| [**get_resource_role**](ResourceRolesApi.md#get_resource_role) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id} | Get Resource Role |
| [**list_resource_roles**](ResourceRolesApi.md#list_resource_roles) | **GET** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles | List Resource Roles |
| [**remove_parent_resource_role**](ResourceRolesApi.md#remove_parent_resource_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id}/parents/{parent_role_id} | Remove Parent Role |
| [**remove_permissions_from_resource_role**](ResourceRolesApi.md#remove_permissions_from_resource_role) | **DELETE** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id}/permissions | Remove Permissions from Role |
| [**update_resource_role**](ResourceRolesApi.md#update_resource_role) | **PATCH** /v2/schema/{proj_id}/{env_id}/resources/{resource_id}/roles/{role_id} | Update Resource Role |


## add_parent_resource_role

> <ResourceRoleRead> add_parent_resource_role(proj_id, env_id, resource_id, role_id, parent_role_id)

Add Parent Role

This endpoint is part of the role hierarchy feature.  Makes role with id `role_id` extend the role with id `parent_role_id`. In other words, `role_id` will automatically be assigned any permissions that are granted to `parent_role_id`.  We can say the `role_id` **extends** `parent_role_id` or **inherits** from `parent_role_id`.  If `role_id` is already an ancestor of `parent_role_id`, the request will fail with HTTP 400 to prevent a cycle in the role hierarchy.  Both roles must be defined on the same resource, identified by id `resource_id`.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
parent_role_id = 'parent_role_id_example' # String | Either the unique id of the parent role, or the URL-friendly key of the parent role (i.e: the \"slug\").

begin
  # Add Parent Role
  result = api_instance.add_parent_resource_role(proj_id, env_id, resource_id, role_id, parent_role_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->add_parent_resource_role: #{e}"
end
```

#### Using the add_parent_resource_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRoleRead>, Integer, Hash)> add_parent_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, parent_role_id)

```ruby
begin
  # Add Parent Role
  data, status_code, headers = api_instance.add_parent_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, parent_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->add_parent_resource_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **parent_role_id** | **String** | Either the unique id of the parent role, or the URL-friendly key of the parent role (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ResourceRoleRead**](ResourceRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## assign_permissions_to_resource_role

> <ResourceRoleRead> assign_permissions_to_resource_role(proj_id, env_id, resource_id, role_id, add_role_permissions)

Assign Permissions to Role

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

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
add_role_permissions = OpenapiClient::AddRolePermissions.new({permissions: ['permissions_example']}) # AddRolePermissions | 

begin
  # Assign Permissions to Role
  result = api_instance.assign_permissions_to_resource_role(proj_id, env_id, resource_id, role_id, add_role_permissions)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->assign_permissions_to_resource_role: #{e}"
end
```

#### Using the assign_permissions_to_resource_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRoleRead>, Integer, Hash)> assign_permissions_to_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, add_role_permissions)

```ruby
begin
  # Assign Permissions to Role
  data, status_code, headers = api_instance.assign_permissions_to_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, add_role_permissions)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->assign_permissions_to_resource_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **add_role_permissions** | [**AddRolePermissions**](AddRolePermissions.md) |  |  |

### Return type

[**ResourceRoleRead**](ResourceRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_resource_role

> <ResourceRoleRead> create_resource_role(proj_id, env_id, resource_id, resource_role_create)

Create Resource Role

Creates a new role associated with the resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
resource_role_create = OpenapiClient::ResourceRoleCreate.new({key: 'key_example', name: 'name_example'}) # ResourceRoleCreate | 

begin
  # Create Resource Role
  result = api_instance.create_resource_role(proj_id, env_id, resource_id, resource_role_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->create_resource_role: #{e}"
end
```

#### Using the create_resource_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRoleRead>, Integer, Hash)> create_resource_role_with_http_info(proj_id, env_id, resource_id, resource_role_create)

```ruby
begin
  # Create Resource Role
  data, status_code, headers = api_instance.create_resource_role_with_http_info(proj_id, env_id, resource_id, resource_role_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->create_resource_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **resource_role_create** | [**ResourceRoleCreate**](ResourceRoleCreate.md) |  |  |

### Return type

[**ResourceRoleRead**](ResourceRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_resource_role

> delete_resource_role(proj_id, env_id, resource_id, role_id)

Delete Resource Role

Deletes the role and all its related data. This includes any permissions granted to said role.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").

begin
  # Delete Resource Role
  api_instance.delete_resource_role(proj_id, env_id, resource_id, role_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->delete_resource_role: #{e}"
end
```

#### Using the delete_resource_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resource_role_with_http_info(proj_id, env_id, resource_id, role_id)

```ruby
begin
  # Delete Resource Role
  data, status_code, headers = api_instance.delete_resource_role_with_http_info(proj_id, env_id, resource_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->delete_resource_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resource_role

> <ResourceRoleRead> get_resource_role(proj_id, env_id, resource_id, role_id)

Get Resource Role

Gets a single role defined on the resource, if such role exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").

begin
  # Get Resource Role
  result = api_instance.get_resource_role(proj_id, env_id, resource_id, role_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->get_resource_role: #{e}"
end
```

#### Using the get_resource_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRoleRead>, Integer, Hash)> get_resource_role_with_http_info(proj_id, env_id, resource_id, role_id)

```ruby
begin
  # Get Resource Role
  data, status_code, headers = api_instance.get_resource_role_with_http_info(proj_id, env_id, resource_id, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->get_resource_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ResourceRoleRead**](ResourceRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_resource_roles

> <Array<ResourceRoleRead>> list_resource_roles(proj_id, env_id, resource_id, opts)

List Resource Roles

Lists all the roles defined on the resource.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Resource Roles
  result = api_instance.list_resource_roles(proj_id, env_id, resource_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->list_resource_roles: #{e}"
end
```

#### Using the list_resource_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResourceRoleRead>>, Integer, Hash)> list_resource_roles_with_http_info(proj_id, env_id, resource_id, opts)

```ruby
begin
  # List Resource Roles
  data, status_code, headers = api_instance.list_resource_roles_with_http_info(proj_id, env_id, resource_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResourceRoleRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->list_resource_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ResourceRoleRead&gt;**](ResourceRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_parent_resource_role

> <ResourceRoleRead> remove_parent_resource_role(proj_id, env_id, resource_id, role_id, parent_role_id)

Remove Parent Role

This endpoint is part of the role hierarchy feature.  Removes `parent_role_id` from the list of parent roles of role with id `role_id`. In other words, `role_id` will no longer be automatically assigned permissions that are granted to `parent_role_id`.  We can say the `role_id` **not longer extends** `parent_role_id` or **no longer inherits** from `parent_role_id`.  Both roles must be defined on the same resource, identified by id `resource_id`.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
parent_role_id = 'parent_role_id_example' # String | Either the unique id of the parent role, or the URL-friendly key of the parent role (i.e: the \"slug\").

begin
  # Remove Parent Role
  result = api_instance.remove_parent_resource_role(proj_id, env_id, resource_id, role_id, parent_role_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->remove_parent_resource_role: #{e}"
end
```

#### Using the remove_parent_resource_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRoleRead>, Integer, Hash)> remove_parent_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, parent_role_id)

```ruby
begin
  # Remove Parent Role
  data, status_code, headers = api_instance.remove_parent_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, parent_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->remove_parent_resource_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **parent_role_id** | **String** | Either the unique id of the parent role, or the URL-friendly key of the parent role (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ResourceRoleRead**](ResourceRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_permissions_from_resource_role

> <ResourceRoleRead> remove_permissions_from_resource_role(proj_id, env_id, resource_id, role_id, remove_role_permissions)

Remove Permissions from Role

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

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
remove_role_permissions = OpenapiClient::RemoveRolePermissions.new({permissions: ['permissions_example']}) # RemoveRolePermissions | 

begin
  # Remove Permissions from Role
  result = api_instance.remove_permissions_from_resource_role(proj_id, env_id, resource_id, role_id, remove_role_permissions)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->remove_permissions_from_resource_role: #{e}"
end
```

#### Using the remove_permissions_from_resource_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRoleRead>, Integer, Hash)> remove_permissions_from_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, remove_role_permissions)

```ruby
begin
  # Remove Permissions from Role
  data, status_code, headers = api_instance.remove_permissions_from_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, remove_role_permissions)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->remove_permissions_from_resource_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **remove_role_permissions** | [**RemoveRolePermissions**](RemoveRolePermissions.md) |  |  |

### Return type

[**ResourceRoleRead**](ResourceRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_resource_role

> <ResourceRoleRead> update_resource_role(proj_id, env_id, resource_id, role_id, resource_role_update)

Update Resource Role

Partially updates the role defined on a resource. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ResourceRolesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
resource_id = 'resource_id_example' # String | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \"slug\").
role_id = 'role_id_example' # String | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \"slug\").
resource_role_update = OpenapiClient::ResourceRoleUpdate.new # ResourceRoleUpdate | 

begin
  # Update Resource Role
  result = api_instance.update_resource_role(proj_id, env_id, resource_id, role_id, resource_role_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->update_resource_role: #{e}"
end
```

#### Using the update_resource_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceRoleRead>, Integer, Hash)> update_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, resource_role_update)

```ruby
begin
  # Update Resource Role
  data, status_code, headers = api_instance.update_resource_role_with_http_info(proj_id, env_id, resource_id, role_id, resource_role_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceRoleRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ResourceRolesApi->update_resource_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **resource_id** | **String** | Either the unique id of the resource, or the URL-friendly key of the resource (i.e: the \&quot;slug\&quot;). |  |
| **role_id** | **String** | Either the unique id of the role, or the URL-friendly key of the role (i.e: the \&quot;slug\&quot;). |  |
| **resource_role_update** | [**ResourceRoleUpdate**](ResourceRoleUpdate.md) |  |  |

### Return type

[**ResourceRoleRead**](ResourceRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

