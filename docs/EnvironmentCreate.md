# OpenapiClient::EnvironmentCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the environment (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the environment. |  |
| **name** | **String** | The name of the environment |  |
| **description** | **String** | an optional longer description of the environment | [optional] |
| **custom_branch_name** | **String** | when using gitops feature, an optional branch name for the environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EnvironmentCreate.new(
  key: null,
  name: null,
  description: null,
  custom_branch_name: null
)
```

