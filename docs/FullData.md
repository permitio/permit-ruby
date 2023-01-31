# OpenapiClient::FullData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**Hash&lt;String, UserData&gt;**](UserData.md) |  |  |
| **roles** | [**Hash&lt;String, RoleData&gt;**](RoleData.md) |  |  |
| **condition_set_rules** | **Hash&lt;String, Hash&lt;String, Hash&lt;String, Array&lt;String&gt;&gt;&gt;&gt;** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FullData.new(
  users: null,
  roles: null,
  condition_set_rules: null
)
```

