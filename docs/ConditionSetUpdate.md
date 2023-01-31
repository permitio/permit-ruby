# OpenapiClient::ConditionSetUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A descriptive name for the set, i.e: &#39;US based employees&#39; or &#39;Users behind VPN&#39; | [optional] |
| **description** | **String** | an optional longer description of the set | [optional] |
| **conditions** | **Object** | a boolean expression that consists of multiple conditions, with and/or logic. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ConditionSetUpdate.new(
  name: null,
  description: null,
  conditions: null
)
```

