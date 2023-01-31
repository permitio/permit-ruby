# OpenapiClient::ResourceRoleUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the role | [optional] |
| **description** | **String** | optional description string explaining what this role represents, or what permissions are granted to it. | [optional] |
| **permissions** | **Array&lt;String&gt;** | list of action keys that define what actions this resource role is permitted to do | [optional] |
| **extends** | **Array&lt;String&gt;** | list of role keys that define what roles this role extends. In other words: this role will automatically inherit all the permissions of the given roles in this list. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResourceRoleUpdate.new(
  name: null,
  description: null,
  permissions: null,
  extends: null
)
```

