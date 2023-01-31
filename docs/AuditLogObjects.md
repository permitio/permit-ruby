# OpenapiClient::AuditLogObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_object** | [**OrganizationObject**](OrganizationObject.md) |  | [optional] |
| **project_object** | [**ProjectObject**](ProjectObject.md) |  | [optional] |
| **environment_object** | [**EnvironmentObject**](EnvironmentObject.md) |  | [optional] |
| **pdp_config_object** | [**PdpConfigObject**](PdpConfigObject.md) |  | [optional] |
| **user_object** | [**UserObject**](UserObject.md) |  | [optional] |
| **action_object** | [**ActionObject**](ActionObject.md) |  | [optional] |
| **resource_type_object** | [**ResourceTypeObject**](ResourceTypeObject.md) |  | [optional] |
| **tenant_object** | [**TenantObject**](TenantObject.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuditLogObjects.new(
  organization_object: null,
  project_object: null,
  environment_object: null,
  pdp_config_object: null,
  user_object: null,
  action_object: null,
  resource_type_object: null,
  tenant_object: null
)
```

