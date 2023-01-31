# OpenapiClient::RemoveRolePermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permissions** | **Array&lt;String&gt;** | List of permissions to remove from the role. If a permission is not found it is skipped. Each permission can be either a resource action id, or &#x60;{resource_key}:{action_key}&#x60;,i.e: the \&quot;permission name\&quot;. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RemoveRolePermissions.new(
  permissions: null
)
```

