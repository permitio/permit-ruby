# OpenapiClient::AuthenticationApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dev_login**](AuthenticationApi.md#dev_login) | **POST** /v2/auth/devlogin | (DEV MODE) Login |
| [**elements_login_as**](AuthenticationApi.md#elements_login_as) | **POST** /v2/auth/elements_login_as | Elements Login As |
| [**login**](AuthenticationApi.md#login) | **POST** /v2/auth/login | Login |
| [**login_elements**](AuthenticationApi.md#login_elements) | **GET** /v2/auth/login_elements | Login Elements |
| [**logout_get**](AuthenticationApi.md#logout_get) | **GET** /v2/auth/logout | Logout Get |
| [**logout_post**](AuthenticationApi.md#logout_post) | **POST** /v2/auth/logout | Logout Post |
| [**me**](AuthenticationApi.md#me) | **GET** /v2/auth/me | Me |
| [**switch_organization**](AuthenticationApi.md#switch_organization) | **POST** /v2/auth/switch_org/{org_id} | Switch Organization |


## dev_login

> dev_login(dev_login)

(DEV MODE) Login

The dev-login endpoints allows a developer inside permit.io to log in with an email address.  THIS IS ONLY AVAILABLE IN DEV MODE.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthenticationApi.new
dev_login = OpenapiClient::DevLogin.new({username: 'username_example'}) # DevLogin | 

begin
  # (DEV MODE) Login
  api_instance.dev_login(dev_login)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->dev_login: #{e}"
end
```

#### Using the dev_login_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dev_login_with_http_info(dev_login)

```ruby
begin
  # (DEV MODE) Login
  data, status_code, headers = api_instance.dev_login_with_http_info(dev_login)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->dev_login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dev_login** | [**DevLogin**](DevLogin.md) |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## elements_login_as

> <EmbeddedLoginRequestOutput> elements_login_as(user_login_request_input)

Elements Login As

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AuthenticationApi.new
user_login_request_input = OpenapiClient::UserLoginRequestInput.new({user_id: 'user_id_example', tenant_id: 'tenant_id_example'}) # UserLoginRequestInput | 

begin
  # Elements Login As
  result = api_instance.elements_login_as(user_login_request_input)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->elements_login_as: #{e}"
end
```

#### Using the elements_login_as_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmbeddedLoginRequestOutput>, Integer, Hash)> elements_login_as_with_http_info(user_login_request_input)

```ruby
begin
  # Elements Login As
  data, status_code, headers = api_instance.elements_login_as_with_http_info(user_login_request_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmbeddedLoginRequestOutput>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->elements_login_as_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_login_request_input** | [**UserLoginRequestInput**](UserLoginRequestInput.md) |  |  |

### Return type

[**EmbeddedLoginRequestOutput**](EmbeddedLoginRequestOutput.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## login

> <LoginResult> login(opts)

Login

The login endpoint allows the frontend app to exchange a user JWT with a user session. The user session is stored on an httpOnly + secure cookie.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AuthenticationApi.new
opts = {
  invite_code: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | An optional invite code to an existing organization. If the invite code is provided and is valid, the member will gain access to that organization.
}

begin
  # Login
  result = api_instance.login(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->login: #{e}"
end
```

#### Using the login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginResult>, Integer, Hash)> login_with_http_info(opts)

```ruby
begin
  # Login
  data, status_code, headers = api_instance.login_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginResult>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_code** | **String** | An optional invite code to an existing organization. If the invite code is provided and is valid, the member will gain access to that organization. | [optional] |

### Return type

[**LoginResult**](LoginResult.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## login_elements

> <LoginResult> login_elements(token)

Login Elements

The login endpoint allows the frontend app to exchange a user JWT with a user session. The user session is stored on an httpOnly + secure cookie.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthenticationApi.new
token = 'token_example' # String | 

begin
  # Login Elements
  result = api_instance.login_elements(token)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->login_elements: #{e}"
end
```

#### Using the login_elements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginResult>, Integer, Hash)> login_elements_with_http_info(token)

```ruby
begin
  # Login Elements
  data, status_code, headers = api_instance.login_elements_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginResult>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->login_elements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  |  |

### Return type

[**LoginResult**](LoginResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout_get

> logout_get

Logout Get

The logout endpoint deletes the session cookie of a logged in user and invalidates cached VCs.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthenticationApi.new

begin
  # Logout Get
  api_instance.logout_get
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->logout_get: #{e}"
end
```

#### Using the logout_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_get_with_http_info

```ruby
begin
  # Logout Get
  data, status_code, headers = api_instance.logout_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->logout_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout_post

> logout_post

Logout Post

The logout endpoint deletes the session cookie of a logged in user and invalidates cached VCs.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthenticationApi.new

begin
  # Logout Post
  api_instance.logout_post
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->logout_post: #{e}"
end
```

#### Using the logout_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_post_with_http_info

```ruby
begin
  # Logout Post
  data, status_code, headers = api_instance.logout_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->logout_post_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## me

> <AuthnMeRead> me

Me

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): HTTPBearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AuthenticationApi.new

begin
  # Me
  result = api_instance.me
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->me: #{e}"
end
```

#### Using the me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthnMeRead>, Integer, Hash)> me_with_http_info

```ruby
begin
  # Me
  data, status_code, headers = api_instance.me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthnMeRead>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthnMeRead**](AuthnMeRead.md)

### Authorization

[HTTPBearer](../README.md#HTTPBearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## switch_organization

> <LoginResult> switch_organization(org_id)

Switch Organization

Allows the user to switch his active organization (manipulates the user's login session).  This route will return a new login cookie to the user.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthenticationApi.new
org_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the organization id the user wishes to switch to as the active org on the session

begin
  # Switch Organization
  result = api_instance.switch_organization(org_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->switch_organization: #{e}"
end
```

#### Using the switch_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginResult>, Integer, Hash)> switch_organization_with_http_info(org_id)

```ruby
begin
  # Switch Organization
  data, status_code, headers = api_instance.switch_organization_with_http_info(org_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginResult>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthenticationApi->switch_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **String** | the organization id the user wishes to switch to as the active org on the session |  |

### Return type

[**LoginResult**](LoginResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

