# OpenapiClient::APIKeyRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_id** | **String** |  |  |
| **project_id** | **String** |  | [optional] |
| **environment_id** | **String** |  | [optional] |
| **object_type** | [**MemberAccessObj**](MemberAccessObj.md) |  | [optional] |
| **access_level** | [**MemberAccessLevel**](MemberAccessLevel.md) |  | [optional] |
| **owner_type** | [**APIKeyOwnerType**](APIKeyOwnerType.md) |  |  |
| **id** | **String** |  |  |
| **secret** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **created_by_member** | [**OrgMemberRead**](OrgMemberRead.md) |  | [optional] |
| **last_used_at** | **Time** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::APIKeyRead.new(
  organization_id: null,
  project_id: null,
  environment_id: null,
  object_type: null,
  access_level: null,
  owner_type: null,
  id: null,
  secret: null,
  created_at: null,
  created_by_member: null,
  last_used_at: null
)
```

