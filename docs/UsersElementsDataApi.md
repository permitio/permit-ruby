# OpenapiClient::UsersElementsDataApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**elements_assign_role_to_user**](UsersElementsDataApi.md#elements_assign_role_to_user) | **POST** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users/{user_id}/roles | Assign role to user |
| [**elements_create_user**](UsersElementsDataApi.md#elements_create_user) | **POST** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users | Create user |
| [**elements_delete_user**](UsersElementsDataApi.md#elements_delete_user) | **DELETE** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users/{user_id} | Delete user |
| [**elements_list_roles**](UsersElementsDataApi.md#elements_list_roles) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/roles | List roles |
| [**elements_list_users**](UsersElementsDataApi.md#elements_list_users) | **GET** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users | List users |
| [**elements_unassign_role_from_user**](UsersElementsDataApi.md#elements_unassign_role_from_user) | **DELETE** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/users/{user_id}/roles | Unassign role from user |
| [**set_config_active**](UsersElementsDataApi.md#set_config_active) | **POST** /v2/elements/{proj_id}/{env_id}/config/{elements_config_id}/data/active | Set Config Active |


## elements_assign_role_to_user

> <RoleAssignmentRead> elements_assign_role_to_user(proj_id, env_id, elements_config_id, user_id, elements_user_role_create)

Assign role to user

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

api_instance = OpenapiClient::UsersElementsDataApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").
elements_user_role_create = OpenapiClient::ElementsUserRoleCreate.new({role: 'role_example'}) # ElementsUserRoleCreate | 

begin
  # Assign role to user
  result = api_instance.elements_assign_role_to_user(proj_id, env_id, elements_config_id, user_id, elements_user_role_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_assign_role_to_user: #{e}"
end
```

#### Using the elements_assign_role_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignmentRead>, Integer, Hash)> elements_assign_role_to_user_with_http_info(proj_id, env_id, elements_config_id, user_id, elements_user_role_create)

```ruby
begin
  # Assign role to user
  data, status_code, headers = api_instance.elements_assign_role_to_user_with_http_info(proj_id, env_id, elements_config_id, user_id, elements_user_role_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignmentRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_assign_role_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |
| **elements_user_role_create** | [**ElementsUserRoleCreate**](ElementsUserRoleCreate.md) |  |  |

### Return type

[**RoleAssignmentRead**](RoleAssignmentRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## elements_create_user

> <UserRead> elements_create_user(proj_id, env_id, elements_config_id, elements_user_create)

Create user

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

api_instance = OpenapiClient::UsersElementsDataApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
elements_user_create = OpenapiClient::ElementsUserCreate.new({key: 'key_example'}) # ElementsUserCreate | 

begin
  # Create user
  result = api_instance.elements_create_user(proj_id, env_id, elements_config_id, elements_user_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_create_user: #{e}"
end
```

#### Using the elements_create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRead>, Integer, Hash)> elements_create_user_with_http_info(proj_id, env_id, elements_config_id, elements_user_create)

```ruby
begin
  # Create user
  data, status_code, headers = api_instance.elements_create_user_with_http_info(proj_id, env_id, elements_config_id, elements_user_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
| **elements_user_create** | [**ElementsUserCreate**](ElementsUserCreate.md) |  |  |

### Return type

[**UserRead**](UserRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## elements_delete_user

> elements_delete_user(proj_id, env_id, elements_config_id, user_id)

Delete user

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersElementsDataApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").

begin
  # Delete user
  api_instance.elements_delete_user(proj_id, env_id, elements_config_id, user_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_delete_user: #{e}"
end
```

#### Using the elements_delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> elements_delete_user_with_http_info(proj_id, env_id, elements_config_id, user_id)

```ruby
begin
  # Delete user
  data, status_code, headers = api_instance.elements_delete_user_with_http_info(proj_id, env_id, elements_config_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## elements_list_roles

> <Array<ElementsRoleRead>> elements_list_roles(proj_id, env_id, elements_config_id, opts)

List roles

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

api_instance = OpenapiClient::UsersElementsDataApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
opts = {
  search: 'search_example', # String | Text search for the email field
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List roles
  result = api_instance.elements_list_roles(proj_id, env_id, elements_config_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_list_roles: #{e}"
end
```

#### Using the elements_list_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ElementsRoleRead>>, Integer, Hash)> elements_list_roles_with_http_info(proj_id, env_id, elements_config_id, opts)

```ruby
begin
  # List roles
  data, status_code, headers = api_instance.elements_list_roles_with_http_info(proj_id, env_id, elements_config_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ElementsRoleRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_list_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
| **search** | **String** | Text search for the email field | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ElementsRoleRead&gt;**](ElementsRoleRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## elements_list_users

> <PaginatedResultUserRead> elements_list_users(proj_id, env_id, elements_config_id, opts)

List users

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

api_instance = OpenapiClient::UsersElementsDataApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
opts = {
  search: 'search_example', # String | Text search for the email field
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List users
  result = api_instance.elements_list_users(proj_id, env_id, elements_config_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_list_users: #{e}"
end
```

#### Using the elements_list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResultUserRead>, Integer, Hash)> elements_list_users_with_http_info(proj_id, env_id, elements_config_id, opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.elements_list_users_with_http_info(proj_id, env_id, elements_config_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResultUserRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
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


## elements_unassign_role_from_user

> elements_unassign_role_from_user(proj_id, env_id, elements_config_id, user_id, elements_user_role_remove)

Unassign role from user

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

api_instance = OpenapiClient::UsersElementsDataApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
user_id = 'user_id_example' # String | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \"slug\").
elements_user_role_remove = OpenapiClient::ElementsUserRoleRemove.new({role: 'role_example'}) # ElementsUserRoleRemove | 

begin
  # Unassign role from user
  api_instance.elements_unassign_role_from_user(proj_id, env_id, elements_config_id, user_id, elements_user_role_remove)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_unassign_role_from_user: #{e}"
end
```

#### Using the elements_unassign_role_from_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> elements_unassign_role_from_user_with_http_info(proj_id, env_id, elements_config_id, user_id, elements_user_role_remove)

```ruby
begin
  # Unassign role from user
  data, status_code, headers = api_instance.elements_unassign_role_from_user_with_http_info(proj_id, env_id, elements_config_id, user_id, elements_user_role_remove)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->elements_unassign_role_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **elements_config_id** | **String** | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \&quot;slug\&quot;). |  |
| **user_id** | **String** | Either the unique id of the user, or the URL-friendly key of the user (i.e: the \&quot;slug\&quot;). |  |
| **elements_user_role_remove** | [**ElementsUserRoleRemove**](ElementsUserRoleRemove.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_config_active

> set_config_active(elements_config_id, proj_id, env_id)

Set Config Active

Updates the embed_config.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersElementsDataApi.new
elements_config_id = 'elements_config_id_example' # String | Either the unique id of the elements_config, or the URL-friendly key of the elements_config (i.e: the \"slug\").
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").

begin
  # Set Config Active
  api_instance.set_config_active(elements_config_id, proj_id, env_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->set_config_active: #{e}"
end
```

#### Using the set_config_active_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_config_active_with_http_info(elements_config_id, proj_id, env_id)

```ruby
begin
  # Set Config Active
  data, status_code, headers = api_instance.set_config_active_with_http_info(elements_config_id, proj_id, env_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersElementsDataApi->set_config_active_with_http_info: #{e}"
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

