# OpenapiClient::AttributeBlockRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**AttributeType**](AttributeType.md) | The type of the attribute, we currently support: &#x60;bool&#x60;, &#x60;number&#x60; (ints, floats), &#x60;time&#x60; (a timestamp), &#x60;string&#x60;, and &#x60;json&#x60;. |  |
| **description** | **String** | optional description string explaining what data this attribute will store | [optional] |
| **id** | **String** | Unique id of the attribute |  |
| **key** | **String** | action key | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AttributeBlockRead.new(
  type: null,
  description: null,
  id: null,
  key: null
)
```

