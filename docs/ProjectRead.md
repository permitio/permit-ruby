# OpenapiClient::ProjectRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the project (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the project. |  |
| **urn_namespace** | **String** | Optional namespace for URNs. If empty, URNs will be generated from project key. | [optional] |
| **id** | **String** | Unique id of the project |  |
| **organization_id** | **String** | Unique id of the organization that the project belongs to. |  |
| **created_at** | **Time** | Date and time when the project was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the project was last updated/modified (ISO_8601 format). |  |
| **name** | **String** | The name of the project |  |
| **description** | **String** | a longer description outlining the project objectives | [optional] |
| **settings** | **Object** | the settings for this project | [optional] |
| **active_policy_repo_id** | **String** | the id of the policy repo to use for this project | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ProjectRead.new(
  key: null,
  urn_namespace: null,
  id: null,
  organization_id: null,
  created_at: null,
  updated_at: null,
  name: null,
  description: null,
  settings: null,
  active_policy_repo_id: null
)
```

