# OpenapiClient::EmbeddedLoginRequestOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | If the login request failed, this field will contain the error message | [optional] |
| **error_code** | **Integer** | If the login request failed, this field will contain the error code | [optional] |
| **token** | **String** | The auth token that lets your users login into permit elements | [optional] |
| **extra** | **String** | Extra data that you can pass to the login request | [optional] |
| **redirect_url** | **String** | The full URL to which the user should be redirected in order to complete the login process |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EmbeddedLoginRequestOutput.new(
  error: null,
  error_code: null,
  token: null,
  extra: null,
  redirect_url: null
)
```

