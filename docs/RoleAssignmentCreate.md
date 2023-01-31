# OpenapiClient::RoleAssignmentCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | the role that will be assigned (accepts either the role id or the role key) |  |
| **tenant** | **String** | the tenant the role is associated with (accepts either the tenant id or the tenant key) |  |
| **user** | **String** | the user the role will be assigned to (accepts either the user id or the user key) |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RoleAssignmentCreate.new(
  role: null,
  tenant: null,
  user: null
)
```

