# OpenapiClient::PolicyGitRepositoriesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_policy_repo**](PolicyGitRepositoriesApi.md#activate_policy_repo) | **PUT** /v2/projects/{proj_id}/repos/{repo_id}/activate | Activate Policy Repo |
| [**create_policy_repo**](PolicyGitRepositoriesApi.md#create_policy_repo) | **POST** /v2/projects/{proj_id}/repos | Create Policy Repo |
| [**delete_policy_repo**](PolicyGitRepositoriesApi.md#delete_policy_repo) | **DELETE** /v2/projects/{proj_id}/repos/{repo_id} | Delete Policy Repo |
| [**disable_active_policy_repo**](PolicyGitRepositoriesApi.md#disable_active_policy_repo) | **PUT** /v2/projects/{proj_id}/repos/disable | Disable Active Policy Repo |
| [**get_active_policy_repo**](PolicyGitRepositoriesApi.md#get_active_policy_repo) | **GET** /v2/projects/{proj_id}/repos/active | Get Active Policy Repo |
| [**get_policy_repo**](PolicyGitRepositoriesApi.md#get_policy_repo) | **GET** /v2/projects/{proj_id}/repos/{repo_id} | Get Policy Repo |
| [**list_policy_repos**](PolicyGitRepositoriesApi.md#list_policy_repos) | **GET** /v2/projects/{proj_id}/repos | List Policy Repos |


## activate_policy_repo

> <ProjectRead> activate_policy_repo(proj_id, repo_id)

Activate Policy Repo

Disable the currently active policy repo, this action means to turn off the gitops feature. If there is no active policy repo, this action will do nothing.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyGitRepositoriesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
repo_id = 'repo_id_example' # String | Either the unique id of the policy repo, or the URL-friendly key of the policy repo (i.e: the \"slug\").

begin
  # Activate Policy Repo
  result = api_instance.activate_policy_repo(proj_id, repo_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->activate_policy_repo: #{e}"
end
```

#### Using the activate_policy_repo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectRead>, Integer, Hash)> activate_policy_repo_with_http_info(proj_id, repo_id)

```ruby
begin
  # Activate Policy Repo
  data, status_code, headers = api_instance.activate_policy_repo_with_http_info(proj_id, repo_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->activate_policy_repo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **repo_id** | **String** | Either the unique id of the policy repo, or the URL-friendly key of the policy repo (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**ProjectRead**](ProjectRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_policy_repo

> <PolicyRepoRead> create_policy_repo(proj_id, policy_repo_create)

Create Policy Repo

Creates a new policy repository configuration under a given project. The given repository is created with status 'pending', it will be changed and used as the 'active' repository for the policy only after a successful attempt to use it. The repository main branch must be present in the remote.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyGitRepositoriesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
policy_repo_create = OpenapiClient::PolicyRepoCreate.new({key: 'key_example', url: 'url_example', credentials: OpenapiClient::SSHAuthData.new({username: 'username_example', private_key: 'private_key_example'})}) # PolicyRepoCreate | 

begin
  # Create Policy Repo
  result = api_instance.create_policy_repo(proj_id, policy_repo_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->create_policy_repo: #{e}"
end
```

#### Using the create_policy_repo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyRepoRead>, Integer, Hash)> create_policy_repo_with_http_info(proj_id, policy_repo_create)

```ruby
begin
  # Create Policy Repo
  data, status_code, headers = api_instance.create_policy_repo_with_http_info(proj_id, policy_repo_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyRepoRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->create_policy_repo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **policy_repo_create** | [**PolicyRepoCreate**](PolicyRepoCreate.md) |  |  |

### Return type

[**PolicyRepoRead**](PolicyRepoRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_policy_repo

> delete_policy_repo(proj_id, repo_id)

Delete Policy Repo

Deletes an environment and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyGitRepositoriesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
repo_id = 'repo_id_example' # String | Either the unique id of the policy repo, or the URL-friendly key of the policy repo (i.e: the \"slug\").

begin
  # Delete Policy Repo
  api_instance.delete_policy_repo(proj_id, repo_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->delete_policy_repo: #{e}"
end
```

#### Using the delete_policy_repo_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_policy_repo_with_http_info(proj_id, repo_id)

```ruby
begin
  # Delete Policy Repo
  data, status_code, headers = api_instance.delete_policy_repo_with_http_info(proj_id, repo_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->delete_policy_repo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **repo_id** | **String** | Either the unique id of the policy repo, or the URL-friendly key of the policy repo (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## disable_active_policy_repo

> <ProjectRead> disable_active_policy_repo(proj_id)

Disable Active Policy Repo

Disable the currently active policy repo, this action means to turn off the gitops feature. If there is no active policy repo, this action will do nothing.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyGitRepositoriesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").

begin
  # Disable Active Policy Repo
  result = api_instance.disable_active_policy_repo(proj_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->disable_active_policy_repo: #{e}"
end
```

#### Using the disable_active_policy_repo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectRead>, Integer, Hash)> disable_active_policy_repo_with_http_info(proj_id)

```ruby
begin
  # Disable Active Policy Repo
  data, status_code, headers = api_instance.disable_active_policy_repo_with_http_info(proj_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->disable_active_policy_repo_with_http_info: #{e}"
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


## get_active_policy_repo

> <PolicyRepoRead> get_active_policy_repo(proj_id)

Get Active Policy Repo

Gets the currently active repository, if such repository exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyGitRepositoriesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").

begin
  # Get Active Policy Repo
  result = api_instance.get_active_policy_repo(proj_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->get_active_policy_repo: #{e}"
end
```

#### Using the get_active_policy_repo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyRepoRead>, Integer, Hash)> get_active_policy_repo_with_http_info(proj_id)

```ruby
begin
  # Get Active Policy Repo
  data, status_code, headers = api_instance.get_active_policy_repo_with_http_info(proj_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyRepoRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->get_active_policy_repo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**PolicyRepoRead**](PolicyRepoRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_policy_repo

> <PolicyRepoRead> get_policy_repo(proj_id, repo_id)

Get Policy Repo

Gets a single repository matching the given repo_id, if such repository exists.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyGitRepositoriesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
repo_id = 'repo_id_example' # String | Either the unique id of the policy repo, or the URL-friendly key of the policy repo (i.e: the \"slug\").

begin
  # Get Policy Repo
  result = api_instance.get_policy_repo(proj_id, repo_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->get_policy_repo: #{e}"
end
```

#### Using the get_policy_repo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyRepoRead>, Integer, Hash)> get_policy_repo_with_http_info(proj_id, repo_id)

```ruby
begin
  # Get Policy Repo
  data, status_code, headers = api_instance.get_policy_repo_with_http_info(proj_id, repo_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyRepoRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->get_policy_repo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **repo_id** | **String** | Either the unique id of the policy repo, or the URL-friendly key of the policy repo (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**PolicyRepoRead**](PolicyRepoRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_policy_repos

> <Array<PolicyRepoRead>> list_policy_repos(proj_id, opts)

List Policy Repos

Lists all the policy repositories under a given project.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyGitRepositoriesApi.new
proj_id = 'proj_id_example' # String | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Policy Repos
  result = api_instance.list_policy_repos(proj_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->list_policy_repos: #{e}"
end
```

#### Using the list_policy_repos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PolicyRepoRead>>, Integer, Hash)> list_policy_repos_with_http_info(proj_id, opts)

```ruby
begin
  # List Policy Repos
  data, status_code, headers = api_instance.list_policy_repos_with_http_info(proj_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PolicyRepoRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyGitRepositoriesApi->list_policy_repos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proj_id** | **String** | Either the unique id of the project, or the URL-friendly key of the project (i.e: the \&quot;slug\&quot;). |  |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;PolicyRepoRead&gt;**](PolicyRepoRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

