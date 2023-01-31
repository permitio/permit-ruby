# OpenapiClient::AuthnMeAPIKeyRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_type** | **String** |  | [optional][default to &#39;api_key&#39;] |
| **id** | **String** |  |  |
| **object_type** | [**MemberAccessObj**](MemberAccessObj.md) |  |  |
| **owner_type** | [**APIKeyOwnerType**](APIKeyOwnerType.md) |  |  |
| **org_id** | **String** |  |  |
| **project_id** | **String** |  | [optional] |
| **env_id** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuthnMeAPIKeyRead.new(
  actor_type: null,
  id: null,
  object_type: null,
  owner_type: null,
  org_id: null,
  project_id: null,
  env_id: null
)
```

