# OpenapiClient::ElementsConfigUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the elements_config | [optional] |
| **elements_type** | [**ElementsType**](ElementsType.md) | The type of the elements interface, e.g: user management | [optional] |
| **settings** | [**Hash&lt;String, Settings&gt;**](Settings.md) | Obj with the options of the elements interface, e.g: primary color | [optional] |
| **roles_to_levels** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Obj with levels as keys and role ids as values |  |
| **webhook** | [**WebhookUpdate**](WebhookUpdate.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ElementsConfigUpdate.new(
  name: null,
  elements_type: null,
  settings: null,
  roles_to_levels: null,
  webhook: null
)
```

