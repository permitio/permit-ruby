# OpenapiClient::APIKeyCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** |  |  |
| **project_id** | **String** |  | [optional] |
| **environment_id** | **String** |  | [optional] |
| **object_type** | [**MemberAccessObj**](MemberAccessObj.md) |  | [optional] |
| **access_level** | [**MemberAccessLevel**](MemberAccessLevel.md) |  | [optional] |
| **owner_type** | [**APIKeyOwnerType**](APIKeyOwnerType.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::APIKeyCreate.new(
  organization_id: null,
  project_id: null,
  environment_id: null,
  object_type: null,
  access_level: null,
  owner_type: null
)
```

