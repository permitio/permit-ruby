# OpenapiClient::LoginResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logged_in** | **Boolean** | whether login was successful |  |
| **expires_at** | **Integer** | when will the login session expire (the unix timestamp in seconds) |  |
| **active_org_id** | **String** | the active organization on the session after the login | [optional] |
| **invite_attempt** | [**InviteAttemptResult**](InviteAttemptResult.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LoginResult.new(
  logged_in: null,
  expires_at: null,
  active_org_id: null,
  invite_attempt: null
)
```

