# OpenapiClient::ElementsEnvTypeRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **roles_to_levels** | **Hash&lt;String, Array&lt;PermissionLevelRoleRead&gt;&gt;** | Obj with levels as keys and role ids as values |  |
| **elements_type** | **String** | The type of the elements interface, e.g: user_management |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ElementsEnvTypeRead.new(
  roles_to_levels: null,
  elements_type: null
)
```

