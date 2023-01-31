# OpenapiClient::RoleAssignmentsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_role**](RoleAssignmentsApi.md#assign_role) | **POST** /v2/facts/{proj_id}/{env_id}/role_assignments | Assign Role |
| [**list_role_assignments**](RoleAssignmentsApi.md#list_role_assignments) | **GET** /v2/facts/{proj_id}/{env_id}/role_assignments | List Role Assignments |
| [**unassign_role**](RoleAssignmentsApi.md#unassign_role) | **DELETE** /v2/facts/{proj_id}/{env_id}/role_assignments | Unassign Role |


## assign_role

> <RoleAssignmentRead> assign_role(proj_id, env_id, role_assignment_create)

Assign Role

Assigns a role to a user within a tenant.  The tenant defines the scope of the assignment. In other words, the role is effective only within the tenant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RoleAssignmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_assignment_create = OpenapiClient::RoleAssignmentCreate.new({role: 'role_example', tenant: 'tenant_example', user: 'user_example'}) # RoleAssignmentCreate | 

begin
  # Assign Role
  result = api_instance.assign_role(proj_id, env_id, role_assignment_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->assign_role: #{e}"
end
```

#### Using the assign_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleAssignmentRead>, Integer, Hash)> assign_role_with_http_info(proj_id, env_id, role_assignment_create)

```ruby
begin
  # Assign Role
  data, status_code, headers = api_instance.assign_role_with_http_info(proj_id, env_id, role_assignment_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleAssignmentRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->assign_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_assignment_create** | [**RoleAssignmentCreate**](RoleAssignmentCreate.md) |  |  |

### Return type

[**RoleAssignmentRead**](RoleAssignmentRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_role_assignments

> <Array<RoleAssignmentRead>> list_role_assignments(proj_id, env_id, opts)

List Role Assignments

Lists the role assignments defined within an environment.  - If the `user` filter is present, will only return the role assignments of that user. - If the `tenant` filter is present, will only return the role assignments in that tenant. - If the `role` filter is present, will only return role assignments that are granting that role.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RoleAssignmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
opts = {
  user: 'user_example', # String | optional user filter, will only return role assignments granted to this user.
  role: 'role_example', # String | optional role filter, will only return role assignments granting this role.
  tenant: 'tenant_example', # String | optional tenant filter, will only return role assignments granted in that tenant.
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Role Assignments
  result = api_instance.list_role_assignments(proj_id, env_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->list_role_assignments: #{e}"
end
```

#### Using the list_role_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RoleAssignmentRead>>, Integer, Hash)> list_role_assignments_with_http_info(proj_id, env_id, opts)

```ruby
begin
  # List Role Assignments
  data, status_code, headers = api_instance.list_role_assignments_with_http_info(proj_id, env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RoleAssignmentRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->list_role_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **user** | **String** | optional user filter, will only return role assignments granted to this user. | [optional] |
| **role** | **String** | optional role filter, will only return role assignments granting this role. | [optional] |
| **tenant** | **String** | optional tenant filter, will only return role assignments granted in that tenant. | [optional] |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;RoleAssignmentRead&gt;**](RoleAssignmentRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unassign_role

> unassign_role(proj_id, env_id, role_assignment_remove)

Unassign Role

Unassigns a user role within a tenant.  The tenant defines the scope of the assignment. In other words, the role is effective only within the tenant.  If the role is not actually assigned, will return 404.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::RoleAssignmentsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
env_id = 'env_id_example' # String | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \"slug\").
role_assignment_remove = OpenapiClient::RoleAssignmentRemove.new({role: 'role_example', tenant: 'tenant_example', user: 'user_example'}) # RoleAssignmentRemove | 

begin
  # Unassign Role
  api_instance.unassign_role(proj_id, env_id, role_assignment_remove)
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->unassign_role: #{e}"
end
```

#### Using the unassign_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unassign_role_with_http_info(proj_id, env_id, role_assignment_remove)

```ruby
begin
  # Unassign Role
  data, status_code, headers = api_instance.unassign_role_with_http_info(proj_id, env_id, role_assignment_remove)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling RoleAssignmentsApi->unassign_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **env_id** | **String** | Either the unique id of the environment, or the URL-friendly key of the environment (i.e: the \&quot;slug\&quot;). |  |
| **role_assignment_remove** | [**RoleAssignmentRemove**](RoleAssignmentRemove.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

