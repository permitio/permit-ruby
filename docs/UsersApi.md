# OpenapiClient::UsersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_role_to_user**](UsersApi.md#assign_role_to_user) | **POST** /v2/facts/{proj_id}/{env_id}/users/{user_id}/roles | Assign Role To User |
| [**create_user**](UsersApi.md#create_user) | **POST** /v2/facts/{proj_id}/{env_id}/users | Create User |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /v2/facts/{proj_id}/{env_id}/users/{user_id} | Delete User |
| [**get_user**](UsersApi.md#get_user) | **GET** /v2/facts/{proj_id}/{env_id}/users/{user_id} | Get User |
| [**list_users**](UsersApi.md#list_users) | **GET** /v2/facts/{proj_id}/{env_id}/users | List Users |
| [**replace_user**](UsersApi.md#replace_user) | **PUT** /v2/facts/{proj_id}/{env_id}/users/{user_id} | Replace User |
| [**unassign_role_from_user**](UsersApi.md#unassign_role_from_user) | **DELETE** /v2/facts/{proj_id}/{env_id}/users/{user_id}/roles | Unassign Role From User |
| [**update_user**](UsersApi.md#update_user) | **PATCH** /v2/facts/{proj_id}/{env_id}/users/{user_id} | Update User |


## assign_role_to_user

> <RoleAssignmentRead> assign_role_to_user(proj_id, env_id, user_id, user_role_create)

Assign Role To User

Assigns a role to the user within the tenant.  The tenant defines the scope of the assignment. In other words, the role is effective only within the tenant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").
user_role_create = OpenapiClient::UserRoleCreate.new({role: 'role_example', tenant: 'tenant_example'}) # UserRoleCreate | 

begin
  # Assign Role To User
  result = api_instance.assign_role_to_user(proj_id, env_id, user_id, user_role_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->assign_role_to_user: #{e}"
end
```

#### Using the assign_role_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignmentRead>, Integer, Hash)> assign_role_to_user_with_http_info(proj_id, env_id, user_id, user_role_create)

```ruby
begin
  # Assign Role To User
  data, status_code, headers = api_instance.assign_role_to_user_with_http_info(proj_id, env_id, user_id, user_role_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignmentRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->assign_role_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |
| **user_role_create** | [**UserRoleCreate**](UserRoleCreate.md) |  |  |

### Return type

[**RoleAssignmentRead**](RoleAssignmentRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user

> <UserRead> create_user(proj_id, env_id, user_create)

Create User

Creates a new user inside the Permit.io system, from that point forward you may run permission checks on that user.  If the user is already created: will return 200 instead of 201, and will return the existing user object in the response body.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_create = OpenapiClient::UserCreate.new({key: 'key_example'}) # UserCreate | 

begin
  # Create User
  result = api_instance.create_user(proj_id, env_id, user_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRead>, Integer, Hash)> create_user_with_http_info(proj_id, env_id, user_create)

```ruby
begin
  # Create User
  data, status_code, headers = api_instance.create_user_with_http_info(proj_id, env_id, user_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_create** | [**UserCreate**](UserCreate.md) |  |  |

### Return type

[**UserRead**](UserRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> delete_user(proj_id, env_id, user_id)

Delete User

Deletes the user and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").

begin
  # Delete User
  api_instance.delete_user(proj_id, env_id, user_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(proj_id, env_id, user_id)

```ruby
begin
  # Delete User
  data, status_code, headers = api_instance.delete_user_with_http_info(proj_id, env_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <UserRead> get_user(proj_id, env_id, user_id)

Get User

Gets a user, if such user exists. Otherwise returns 404.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").

begin
  # Get User
  result = api_instance.get_user(proj_id, env_id, user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRead>, Integer, Hash)> get_user_with_http_info(proj_id, env_id, user_id)

```ruby
begin
  # Get User
  data, status_code, headers = api_instance.get_user_with_http_info(proj_id, env_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**UserRead**](UserRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <PaginatedResultUserRead> list_users(proj_id, env_id, opts)

List Users

Lists all the users defined within an environment.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  search: 'search_example', # String | Text search for the email field
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Users
  result = api_instance.list_users(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResultUserRead>, Integer, Hash)> list_users_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Users
  data, status_code, headers = api_instance.list_users_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResultUserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
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


## replace_user

> <UserRead> replace_user(proj_id, env_id, user_id, user_create)

Replace User

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").
user_create = OpenapiClient::UserCreate.new({key: 'key_example'}) # UserCreate | 

begin
  # Replace User
  result = api_instance.replace_user(proj_id, env_id, user_id, user_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->replace_user: #{e}"
end
```

#### Using the replace_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRead>, Integer, Hash)> replace_user_with_http_info(proj_id, env_id, user_id, user_create)

```ruby
begin
  # Replace User
  data, status_code, headers = api_instance.replace_user_with_http_info(proj_id, env_id, user_id, user_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->replace_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |
| **user_create** | [**UserCreate**](UserCreate.md) |  |  |

### Return type

[**UserRead**](UserRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unassign_role_from_user

> <UserRead> unassign_role_from_user(proj_id, env_id, user_id, user_role_remove)

Unassign Role From User

Unassigns the role from the user within the tenant.  The tenant defines the scope of the assignment. In other words, the role is effective only within the tenant.  If the role is not actually assigned, will return 404.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").
user_role_remove = OpenapiClient::UserRoleRemove.new({role: 'role_example', tenant: 'tenant_example'}) # UserRoleRemove | 

begin
  # Unassign Role From User
  result = api_instance.unassign_role_from_user(proj_id, env_id, user_id, user_role_remove)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->unassign_role_from_user: #{e}"
end
```

#### Using the unassign_role_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRead>, Integer, Hash)> unassign_role_from_user_with_http_info(proj_id, env_id, user_id, user_role_remove)

```ruby
begin
  # Unassign Role From User
  data, status_code, headers = api_instance.unassign_role_from_user_with_http_info(proj_id, env_id, user_id, user_role_remove)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->unassign_role_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |
| **user_role_remove** | [**UserRoleRemove**](UserRoleRemove.md) |  |  |

### Return type

[**UserRead**](UserRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> <UserRead> update_user(proj_id, env_id, user_id, user_update)

Update User

Partially updates the user definition. Fields that will be provided will be completely overwritten.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").
user_update = OpenapiClient::UserUpdate.new # UserUpdate | 

begin
  # Update User
  result = api_instance.update_user(proj_id, env_id, user_id, user_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRead>, Integer, Hash)> update_user_with_http_info(proj_id, env_id, user_id, user_update)

```ruby
begin
  # Update User
  data, status_code, headers = api_instance.update_user_with_http_info(proj_id, env_id, user_id, user_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |
| **user_update** | [**UserUpdate**](UserUpdate.md) |  |  |

### Return type

[**UserRead**](UserRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

