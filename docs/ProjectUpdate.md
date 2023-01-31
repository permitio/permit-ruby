# OpenapiClient::ProjectUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the project | [optional] |
| **description** | **String** | a longer description outlining the project objectives | [optional] |
| **settings** | **Object** | the settings for this project | [optional] |
| **active_policy_repo_id** | **String** | the id of the policy repo to use for this project | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ProjectUpdate.new(
  name: null,
  description: null,
  settings: null,
  active_policy_repo_id: null
)
```

