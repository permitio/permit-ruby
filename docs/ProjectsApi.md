# OpenapiClient::ProjectsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_project**](ProjectsApi.md#create_project) | **POST** /v2/projects | Create Project |
| [**delete_project**](ProjectsApi.md#delete_project) | **DELETE** /v2/projects/{proj_id} | Delete Project |
| [**get_project**](ProjectsApi.md#get_project) | **GET** /v2/projects/{proj_id} | Get Project |
| [**list_projects**](ProjectsApi.md#list_projects) | **GET** /v2/projects | List Projects |
| [**update_project**](ProjectsApi.md#update_project) | **PATCH** /v2/projects/{proj_id} | Update Project |


## create_project

> <ProjectRead> create_project(project_create)

Create Project

Creates a new project under the active organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
project_create = OpenapiClient::ProjectCreate.new({key: 'key_example', name: 'name_example'}) # ProjectCreate | 

begin
  # Create Project
  result = api_instance.create_project(project_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->create_project: #{e}"
end
```

#### Using the create_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectRead>, Integer, Hash)> create_project_with_http_info(project_create)

```ruby
begin
  # Create Project
  data, status_code, headers = api_instance.create_project_with_http_info(project_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->create_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_create** | [**ProjectCreate**](ProjectCreate.md) |  |  |

### Return type

[**ProjectRead**](ProjectRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_project

> delete_project(proj_id)

Delete Project

Deletes the project and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").

begin
  # Delete Project
  api_instance.delete_project(proj_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->delete_project: #{e}"
end
```

#### Using the delete_project_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_project_with_http_info(proj_id)

```ruby
begin
  # Delete Project
  data, status_code, headers = api_instance.delete_project_with_http_info(proj_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->delete_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project

> <ProjectRead> get_project(proj_id)

Get Project

Gets a single project matching the given proj_id, if such project exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").

begin
  # Get Project
  result = api_instance.get_project(proj_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->get_project: #{e}"
end
```

#### Using the get_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectRead>, Integer, Hash)> get_project_with_http_info(proj_id)

```ruby
begin
  # Get Project
  data, status_code, headers = api_instance.get_project_with_http_info(proj_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->get_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ProjectRead**](ProjectRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_projects

> <Array<ProjectRead>> list_projects(opts)

List Projects

Lists all the projects under the active organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Projects
  result = api_instance.list_projects(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->list_projects: #{e}"
end
```

#### Using the list_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ProjectRead>>, Integer, Hash)> list_projects_with_http_info(opts)

```ruby
begin
  # List Projects
  data, status_code, headers = api_instance.list_projects_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ProjectRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->list_projects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;ProjectRead&gt;**](ProjectRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_project

> <ProjectRead> update_project(proj_id, project_update)

Update Project

Updates the project.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ProjectsApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
project_update = OpenapiClient::ProjectUpdate.new # ProjectUpdate | 

begin
  # Update Project
  result = api_instance.update_project(proj_id, project_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->update_project: #{e}"
end
```

#### Using the update_project_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectRead>, Integer, Hash)> update_project_with_http_info(proj_id, project_update)

```ruby
begin
  # Update Project
  data, status_code, headers = api_instance.update_project_with_http_info(proj_id, project_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ProjectsApi->update_project_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **project_update** | [**ProjectUpdate**](ProjectUpdate.md) |  |  |

### Return type

[**ProjectRead**](ProjectRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

