# OpenapiClient::InviteAttemptResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_successful** | **Boolean** | the invite code was accepted | [optional][default to false] |
| **invite_failed_reason** | **String** | if the invite failed, the reason it failed | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InviteAttemptResult.new(
  invite_successful: null,
  invite_failed_reason: null
)
```

