# OpenapiClient::OrganizationsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_invite**](OrganizationsApi.md#cancel_invite) | **DELETE** /v2/orgs/{org_id}/invites/{invite_id} | Cancel Invite |
| [**create_organization**](OrganizationsApi.md#create_organization) | **POST** /v2/orgs | Create Organization |
| [**delete_organization**](OrganizationsApi.md#delete_organization) | **DELETE** /v2/orgs/{org_id} | Delete Organization |
| [**get_active_organization**](OrganizationsApi.md#get_active_organization) | **GET** /v2/orgs/active/org | Get Active Organization |
| [**get_organization**](OrganizationsApi.md#get_organization) | **GET** /v2/orgs/{org_id} | Get Organization |
| [**invite_members_to_organization**](OrganizationsApi.md#invite_members_to_organization) | **POST** /v2/orgs/{org_id}/invites | Invite Members To Organization |
| [**list_organization_invites**](OrganizationsApi.md#list_organization_invites) | **GET** /v2/orgs/{org_id}/invites | List Organization Invites |
| [**list_organizations**](OrganizationsApi.md#list_organizations) | **GET** /v2/orgs | List Organizations |
| [**update_organization**](OrganizationsApi.md#update_organization) | **PATCH** /v2/orgs/{org_id} | Update Organization |


## cancel_invite

> cancel_invite(org_id, invite_id)

Cancel Invite

Cancels an invite that was sent to a new member.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
org_id = 'org_id_example' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").
invite_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the invite to cancel

begin
  # Cancel Invite
  api_instance.cancel_invite(org_id, invite_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->cancel_invite: #{e}"
end
```

#### Using the cancel_invite_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_invite_with_http_info(org_id, invite_id)

```ruby
begin
  # Cancel Invite
  data, status_code, headers = api_instance.cancel_invite_with_http_info(org_id, invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->cancel_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |
| **invite_id** | **String** | Id of the invite to cancel |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_organization

> <OrganizationReadWithAPIKey> create_organization(organization_create)

Create Organization

Creates a new organization that will be owned by the authenticated actor (i.e: human team member or api key).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
organization_create = OpenapiClient::OrganizationCreate.new({key: 'key_example', name: 'name_example'}) # OrganizationCreate | 

begin
  # Create Organization
  result = api_instance.create_organization(organization_create)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->create_organization: #{e}"
end
```

#### Using the create_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationReadWithAPIKey>, Integer, Hash)> create_organization_with_http_info(organization_create)

```ruby
begin
  # Create Organization
  data, status_code, headers = api_instance.create_organization_with_http_info(organization_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationReadWithAPIKey>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->create_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_create** | [**OrganizationCreate**](OrganizationCreate.md) |  |  |

### Return type

[**OrganizationReadWithAPIKey**](OrganizationReadWithAPIKey.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization

> delete_organization(org_id)

Delete Organization

Deletes an organization (Permit.io account) and all its related data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
org_id = 'org_id_example' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").

begin
  # Delete Organization
  api_instance.delete_organization(org_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organization: #{e}"
end
```

#### Using the delete_organization_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_organization_with_http_info(org_id)

```ruby
begin
  # Delete Organization
  data, status_code, headers = api_instance.delete_organization_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->delete_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_active_organization

> <OrganizationRead> get_active_organization

Get Active Organization

Gets a single organization (Permit.io account) matching the given org_id, if such org exists and can be accessed by the authenticated actor.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new

begin
  # Get Active Organization
  result = api_instance.get_active_organization
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->get_active_organization: #{e}"
end
```

#### Using the get_active_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationRead>, Integer, Hash)> get_active_organization_with_http_info

```ruby
begin
  # Get Active Organization
  data, status_code, headers = api_instance.get_active_organization_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->get_active_organization_with_http_info: #{e}"
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


## get_organization

> <OrganizationRead> get_organization(org_id)

Get Organization

Gets a single organization (Permit.io account) matching the given org_id, if such org exists and can be accessed by the authenticated actor.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
org_id = 'org_id_example' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").

begin
  # Get Organization
  result = api_instance.get_organization(org_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization: #{e}"
end
```

#### Using the get_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationRead>, Integer, Hash)> get_organization_with_http_info(org_id)

```ruby
begin
  # Get Organization
  data, status_code, headers = api_instance.get_organization_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |

### Return type

[**OrganizationRead**](OrganizationRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invite_members_to_organization

> <MultiInviteResult> invite_members_to_organization(org_id, invite_create, opts)

Invite Members To Organization

Invite new members into the organization.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
org_id = 'org_id_example' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").
invite_create = [OpenapiClient::InviteCreate.new({email: 'email_example', role: 'role_example'})] # Array<InviteCreate> | 
opts = {
  inviter_name: 'inviter_name_example', # String | 
  inviter_email: 'inviter_email_example' # String | 
}

begin
  # Invite Members To Organization
  result = api_instance.invite_members_to_organization(org_id, invite_create, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->invite_members_to_organization: #{e}"
end
```

#### Using the invite_members_to_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiInviteResult>, Integer, Hash)> invite_members_to_organization_with_http_info(org_id, invite_create, opts)

```ruby
begin
  # Invite Members To Organization
  data, status_code, headers = api_instance.invite_members_to_organization_with_http_info(org_id, invite_create, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiInviteResult>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->invite_members_to_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |
| **invite_create** | [**Array&lt;InviteCreate&gt;**](InviteCreate.md) |  |  |
| **inviter_name** | **String** |  | [optional] |
| **inviter_email** | **String** |  | [optional] |

### Return type

[**MultiInviteResult**](MultiInviteResult.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_organization_invites

> <Array<InviteRead>> list_organization_invites(org_id, opts)

List Organization Invites

Lists pending organization invites

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
org_id = 'org_id_example' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Organization Invites
  result = api_instance.list_organization_invites(org_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->list_organization_invites: #{e}"
end
```

#### Using the list_organization_invites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<InviteRead>>, Integer, Hash)> list_organization_invites_with_http_info(org_id, opts)

```ruby
begin
  # List Organization Invites
  data, status_code, headers = api_instance.list_organization_invites_with_http_info(org_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<InviteRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->list_organization_invites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;InviteRead&gt;**](InviteRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organizations

> <Array<OrganizationRead>> list_organizations(opts)

List Organizations

Lists all the organizations that can be accessed by the authenticated actor (i.e: human team member or api key).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Organizations
  result = api_instance.list_organizations(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->list_organizations: #{e}"
end
```

#### Using the list_organizations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OrganizationRead>>, Integer, Hash)> list_organizations_with_http_info(opts)

```ruby
begin
  # List Organizations
  data, status_code, headers = api_instance.list_organizations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OrganizationRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->list_organizations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;OrganizationRead&gt;**](OrganizationRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization

> <OrganizationRead> update_organization(org_id, organization_update)

Update Organization

Updates the organization's profile.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::OrganizationsApi.new
org_id = 'org_id_example' # String | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \"slug\").
organization_update = OpenapiClient::OrganizationUpdate.new # OrganizationUpdate | 

begin
  # Update Organization
  result = api_instance.update_organization(org_id, organization_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization: #{e}"
end
```

#### Using the update_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationRead>, Integer, Hash)> update_organization_with_http_info(org_id, organization_update)

```ruby
begin
  # Update Organization
  data, status_code, headers = api_instance.update_organization_with_http_info(org_id, organization_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | Either the unique id of the organization, or the URL-friendly key of the organization (i.e: the \&quot;slug\&quot;). |  |
| **organization_update** | [**OrganizationUpdate**](OrganizationUpdate.md) |  |  |

### Return type

[**OrganizationRead**](OrganizationRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

