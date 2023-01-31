# OpenapiClient::ElementsConfigCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the elements_config (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the elements_config. |  |
| **name** | **String** | The name of the elements_config |  |
| **elements_type** | [**ElementsType**](ElementsType.md) | The type of the elements interface, e.g: user management |  |
| **settings** | [**Hash&lt;String, Settings&gt;**](Settings.md) | Obj with the options of the elements interface, e.g: primary color |  |
| **roles_to_levels** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Obj with levels as keys and role ids as values |  |
| **webhook** | [**WebhookCreate**](WebhookCreate.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ElementsConfigCreate.new(
  key: null,
  name: null,
  elements_type: null,
  settings: null,
  roles_to_levels: null,
  webhook: null
)
```

