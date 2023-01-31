# OpenapiClient::APIKeyScopeRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** | Unique id of the organization that the api_key belongs to. |  |
| **project_id** | **String** | Unique id of the project that the api_key belongs to. | [optional] |
| **environment_id** | **String** | Unique id of the environment that the api_key belongs to. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::APIKeyScopeRead.new(
  organization_id: null,
  project_id: null,
  environment_id: null
)
```

