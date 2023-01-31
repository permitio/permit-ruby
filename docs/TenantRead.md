# OpenapiClient::TenantRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique id by which Permit will identify the tenant. The tenant key must be url-friendly (slugified). |  |
| **id** | **String** | Unique id of the tenant |  |
| **organization_id** | **String** | Unique id of the organization that the tenant belongs to. |  |
| **project_id** | **String** | Unique id of the project that the tenant belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the tenant belongs to. |  |
| **created_at** | **Time** | Date and time when the tenant was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the tenant was last updated/modified (ISO_8601 format). |  |
| **last_action_at** | **Time** | Date and time when the tenant was last active (ISO_8601 format). In other words, this is the last time a permission check was done on a resource belonging to this tenant. |  |
| **name** | **String** | A descriptive name for the tenant |  |
| **description** | **String** | an optional longer description of the tenant | [optional] |
| **attributes** | **Object** | Arbitraty tenant attributes that will be used to enforce attribute-based access control policies. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TenantRead.new(
  key: null,
  id: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  created_at: null,
  updated_at: null,
  last_action_at: null,
  name: null,
  description: null,
  attributes: null
)
```

