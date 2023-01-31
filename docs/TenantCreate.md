# OpenapiClient::TenantCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique id by which Permit will identify the tenant. The tenant key must be url-friendly (slugified). |  |
| **name** | **String** | A descriptive name for the tenant |  |
| **description** | **String** | an optional longer description of the tenant | [optional] |
| **attributes** | **Object** | Arbitraty tenant attributes that will be used to enforce attribute-based access control policies. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TenantCreate.new(
  key: null,
  name: null,
  description: null,
  attributes: null
)
```

