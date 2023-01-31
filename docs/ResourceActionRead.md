# OpenapiClient::ResourceActionRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the action |  |
| **description** | **String** | An optional longer description of what this action respresents in your system | [optional] |
| **key** | **String** | A URL-friendly name of the action (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the action. |  |
| **id** | **String** | Unique id of the action |  |
| **permission_name** | **String** | The name of the action, prefixed by the resource the action is acting upon. |  |
| **organization_id** | **String** | Unique id of the organization that the action belongs to. |  |
| **project_id** | **String** | Unique id of the project that the action belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the action belongs to. |  |
| **resource_id** | **String** | Unique id of the resource that the action belongs to. |  |
| **created_at** | **Time** | Date and time when the action was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the action was last updated/modified (ISO_8601 format). |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResourceActionRead.new(
  name: null,
  description: null,
  key: null,
  id: null,
  permission_name: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  resource_id: null,
  created_at: null,
  updated_at: null
)
```

