# OpenapiClient::InviteRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The invited member&#39;s email address |  |
| **role** | **String** | The role the member will be assigned with |  |
| **id** | **String** | Unique id of the invite |  |
| **organization_id** | **String** | Unique id of the organization that the invite belongs to. |  |
| **invite_code** | **String** | The invite code that is sent to the member&#39;s email |  |
| **created_at** | **Time** | Date and time when the invite was created (ISO_8601 format). |  |
| **status** | [**InviteStatus**](InviteStatus.md) | The status of the invite (pending, failed, etc) |  |
| **failed_reason** | **String** | if failed, the reason the invitation failed | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InviteRead.new(
  email: null,
  role: null,
  id: null,
  organization_id: null,
  invite_code: null,
  created_at: null,
  status: null,
  failed_reason: null
)
```

