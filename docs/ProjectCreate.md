# OpenapiClient::ProjectCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the project (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the project. |  |
| **urn_namespace** | **String** | Optional namespace for URNs. If empty, URNs will be generated from project key. | [optional] |
| **name** | **String** | The name of the project |  |
| **description** | **String** | a longer description outlining the project objectives | [optional] |
| **settings** | **Object** | the settings for this project | [optional] |
| **active_policy_repo_id** | **String** | the id of the policy repo to use for this project | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ProjectCreate.new(
  key: null,
  urn_namespace: null,
  name: null,
  description: null,
  settings: null,
  active_policy_repo_id: null
)
```

