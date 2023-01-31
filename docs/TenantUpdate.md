# OpenapiClient::TenantUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A descriptive name for the tenant | [optional] |
| **description** | **String** | an optional longer description of the tenant | [optional] |
| **attributes** | **Object** | Arbitraty tenant attributes that will be used to enforce attribute-based access control policies. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TenantUpdate.new(
  name: null,
  description: null,
  attributes: null
)
```

