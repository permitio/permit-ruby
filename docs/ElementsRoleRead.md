# OpenapiClient::ElementsRoleRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the role |  |
| **description** | **String** | optional description string explaining what this role represents, or what permissions are granted to it. | [optional] |
| **permissions** | **Array&lt;String&gt;** | list of action keys that define what actions this resource role is permitted to do | [optional] |
| **extends** | **Array&lt;String&gt;** | list of role keys that define what roles this role extends. In other words: this role will automatically inherit all the permissions of the given roles in this list. | [optional] |
| **key** | **String** | A URL-friendly name of the role (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the role. |  |
| **id** | **String** | Unique id of the role |  |
| **organization_id** | **String** | Unique id of the organization that the role belongs to. |  |
| **project_id** | **String** | Unique id of the project that the role belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the role belongs to. |  |
| **created_at** | **Time** | Date and time when the role was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the role was last updated/modified (ISO_8601 format). |  |
| **permission_level** | [**ElementsPermissionLevel**](ElementsPermissionLevel.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ElementsRoleRead.new(
  name: null,
  description: null,
  permissions: null,
  extends: null,
  key: null,
  id: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  created_at: null,
  updated_at: null,
  permission_level: null
)
```

