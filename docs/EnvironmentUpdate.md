# OpenapiClient::EnvironmentUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the environment | [optional] |
| **description** | **String** | an optional longer description of the environment | [optional] |
| **custom_branch_name** | **String** | when using gitops feature, an optional branch name for the environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EnvironmentUpdate.new(
  name: null,
  description: null,
  custom_branch_name: null
)
```

