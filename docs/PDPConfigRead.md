# OpenapiClient::PDPConfigRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **organization_id** | **String** | Unique id of the organization that the pdp_config belongs to. |  |
| **project_id** | **String** | Unique id of the project that the pdp_config belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the pdp_config belongs to. |  |
| **client_secret** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PDPConfigRead.new(
  id: null,
  name: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  client_secret: null
)
```

