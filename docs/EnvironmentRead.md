# OpenapiClient::EnvironmentRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the environment (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the environment. |  |
| **id** | **String** | Unique id of the environment |  |
| **organization_id** | **String** | Unique id of the organization that the environment belongs to. |  |
| **project_id** | **String** | Unique id of the project that the environment belongs to. |  |
| **created_at** | **Time** | Date and time when the environment was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the environment was last updated/modified (ISO_8601 format). |  |
| **name** | **String** | The name of the environment |  |
| **description** | **String** | an optional longer description of the environment | [optional] |
| **custom_branch_name** | **String** | when using gitops feature, an optional branch name for the environment | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EnvironmentRead.new(
  key: null,
  id: null,
  organization_id: null,
  project_id: null,
  created_at: null,
  updated_at: null,
  name: null,
  description: null,
  custom_branch_name: null
)
```

