# OpenapiClient::RoleAssignmentRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique id of the role assignment |  |
| **user** | **String** | the user the role is assigned to |  |
| **role** | **String** | the role that is assigned |  |
| **tenant** | **String** | the tenant the role is associated with |  |
| **user_id** | **String** | Unique id of the user |  |
| **role_id** | **String** | Unique id of the role |  |
| **tenant_id** | **String** | Unique id of the tenant |  |
| **organization_id** | **String** | Unique id of the organization that the role assignment belongs to. |  |
| **project_id** | **String** | Unique id of the project that the role assignment belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the role assignment belongs to. |  |
| **created_at** | **Time** | Date and time when the role assignment was created (ISO_8601 format). |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RoleAssignmentRead.new(
  id: null,
  user: null,
  role: null,
  tenant: null,
  user_id: null,
  role_id: null,
  tenant_id: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  created_at: null
)
```

