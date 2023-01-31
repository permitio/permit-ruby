# OpenapiClient::UserLoginRequestInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID or key of the user for whom to generate a token |  |
| **tenant_id** | **String** | ID or key of the tenant to which access is requested |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UserLoginRequestInput.new(
  user_id: null,
  tenant_id: null
)
```

