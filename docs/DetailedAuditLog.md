# OpenapiClient::DetailedAuditLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **raw_data** | [**RawData**](RawData.md) |  |  |
| **input** | **Object** |  | [optional] |
| **result** | **Object** |  | [optional] |
| **context** | **Object** |  | [optional] |
| **action** | **String** |  |  |
| **timestamp** | **Time** |  |  |
| **query** | **String** |  |  |
| **user_key** | **String** |  | [optional] |
| **user_email** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **tenant** | **String** |  | [optional] |
| **decision** | **Boolean** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **pdp_config_id** | **String** |  |  |
| **env_id** | **String** |  |  |
| **project_id** | **String** |  |  |
| **org_id** | **String** |  |  |
| **objects** | [**AuditLogObjects**](AuditLogObjects.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DetailedAuditLog.new(
  id: null,
  raw_data: null,
  input: null,
  result: null,
  context: null,
  action: null,
  timestamp: null,
  query: null,
  user_key: null,
  user_email: null,
  user_name: null,
  resource_type: null,
  tenant: null,
  decision: null,
  reason: null,
  pdp_config_id: null,
  env_id: null,
  project_id: null,
  org_id: null,
  objects: null
)
```

