# OpenapiClient::ResourceActionCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the action (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the action. |  |
| **name** | **String** | The name of the action |  |
| **description** | **String** | An optional longer description of what this action respresents in your system | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResourceActionCreate.new(
  key: null,
  name: null,
  description: null
)
```

