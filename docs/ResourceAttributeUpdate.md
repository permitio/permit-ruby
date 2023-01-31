# OpenapiClient::ResourceAttributeUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**AttributeType**](AttributeType.md) | The type of the attribute, we currently support: &#x60;bool&#x60;, &#x60;number&#x60; (ints, floats), &#x60;time&#x60; (a timestamp), &#x60;string&#x60;, and &#x60;json&#x60;. | [optional] |
| **description** | **String** | An optional longer description of what this attribute respresents in your system | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResourceAttributeUpdate.new(
  type: null,
  description: null
)
```

