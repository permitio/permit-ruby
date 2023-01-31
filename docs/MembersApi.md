# OpenapiClient::MembersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_organization_member**](MembersApi.md#delete_organization_member) | **DELETE** /v2/members/{member_id} | Delete Organization Member |
| [**get_authenticated_member**](MembersApi.md#get_authenticated_member) | **GET** /v2/members/me | Get the authenticated account member |
| [**get_organization_member**](MembersApi.md#get_organization_member) | **GET** /v2/members/{member_id} | Get Organization Member |
| [**list_organization_members**](MembersApi.md#list_organization_members) | **GET** /v2/members | List Organization Members |
| [**update_organization_member**](MembersApi.md#update_organization_member) | **PATCH** /v2/members/{member_id} | Update Organization Member |


## delete_organization_member

> delete_organization_member(member_id)

Delete Organization Member

Deletes an account member matching the given id or email address. The member will be removed from the active account in permit.io.  If the member is the only member in its account (organization), returns 400 (bad request), due to nobody remains with access to the account, meaning deletion of the entire account (org). To completely remove an account, call DELETE `/orgs/{org}`.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MembersApi.new
member_id = 'member_id_example' # String | Either the unique id (UUID) of the account member, or the email address of the account member.

begin
  # Delete Organization Member
  api_instance.delete_organization_member(member_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->delete_organization_member: #{e}"
end
```

#### Using the delete_organization_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_organization_member_with_http_info(member_id)

```ruby
begin
  # Delete Organization Member
  data, status_code, headers = api_instance.delete_organization_member_with_http_info(member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->delete_organization_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Either the unique id (UUID) of the account member, or the email address of the account member. |  |

### Return type

nil (empty response body)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_authenticated_member

> <OrgMemberRead> get_authenticated_member

Get the authenticated account member

Gets the authenticated account member's details.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MembersApi.new

begin
  # Get the authenticated account member
  result = api_instance.get_authenticated_member
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->get_authenticated_member: #{e}"
end
```

#### Using the get_authenticated_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrgMemberRead>, Integer, Hash)> get_authenticated_member_with_http_info

```ruby
begin
  # Get the authenticated account member
  data, status_code, headers = api_instance.get_authenticated_member_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrgMemberRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->get_authenticated_member_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OrgMemberRead**](OrgMemberRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_member

> <OrgMemberRead> get_organization_member(member_id)

Get Organization Member

Gets a single account member by its id or email address. matching the given member, if no such member exists under the current active account (organization), returns 404.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MembersApi.new
member_id = 'member_id_example' # String | Either the unique id (UUID) of the account member, or the email address of the account member.

begin
  # Get Organization Member
  result = api_instance.get_organization_member(member_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->get_organization_member: #{e}"
end
```

#### Using the get_organization_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrgMemberRead>, Integer, Hash)> get_organization_member_with_http_info(member_id)

```ruby
begin
  # Get Organization Member
  data, status_code, headers = api_instance.get_organization_member_with_http_info(member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrgMemberRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->get_organization_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Either the unique id (UUID) of the account member, or the email address of the account member. |  |

### Return type

[**OrgMemberRead**](OrgMemberRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organization_members

> <Array<OrgMemberRead>> list_organization_members(opts)

List Organization Members

Lists all the account members that have access to the current active account. The active account/organization is determined by the API Key used or by the authenticated session id.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MembersApi.new
opts = {
  page: 56, # Integer | Page number of the results to fetch, starting at 1.
  per_page: 56 # Integer | The number of results per page (max 100).
}

begin
  # List Organization Members
  result = api_instance.list_organization_members(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->list_organization_members: #{e}"
end
```

#### Using the list_organization_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OrgMemberRead>>, Integer, Hash)> list_organization_members_with_http_info(opts)

```ruby
begin
  # List Organization Members
  data, status_code, headers = api_instance.list_organization_members_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OrgMemberRead>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->list_organization_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number of the results to fetch, starting at 1. | [optional][default to 1] |
| **per_page** | **Integer** | The number of results per page (max 100). | [optional][default to 30] |

### Return type

[**Array&lt;OrgMemberRead&gt;**](OrgMemberRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization_member

> <OrgMemberRead> update_organization_member(member_id, org_member_update)

Update Organization Member

Updates an account member's settings.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::MembersApi.new
member_id = 'member_id_example' # String | Either the unique id (UUID) of the account member, or the email address of the account member.
org_member_update = OpenapiClient::OrgMemberUpdate.new # OrgMemberUpdate | 

begin
  # Update Organization Member
  result = api_instance.update_organization_member(member_id, org_member_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->update_organization_member: #{e}"
end
```

#### Using the update_organization_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrgMemberRead>, Integer, Hash)> update_organization_member_with_http_info(member_id, org_member_update)

```ruby
begin
  # Update Organization Member
  data, status_code, headers = api_instance.update_organization_member_with_http_info(member_id, org_member_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrgMemberRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->update_organization_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_id** | **String** | Either the unique id (UUID) of the account member, or the email address of the account member. |  |
| **org_member_update** | [**OrgMemberUpdate**](OrgMemberUpdate.md) |  |  |

### Return type

[**OrgMemberRead**](OrgMemberRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

