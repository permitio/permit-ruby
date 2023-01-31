# OpenapiClient::UserUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email of the user. If synced, will be unique inside the environment. | [optional] |
| **first_name** | **String** | First name of the user. | [optional] |
| **last_name** | **String** | Last name of the user. | [optional] |
| **attributes** | **Object** | Arbitraty user attributes that will be used to enforce attribute-based access control policies. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UserUpdate.new(
  email: null,
  first_name: null,
  last_name: null,
  attributes: null
)
```

