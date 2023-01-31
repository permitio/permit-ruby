# OpenapiClient::MultiInviteResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | [**Array&lt;InviteRead&gt;**](InviteRead.md) |  |  |
| **failed** | [**Array&lt;FailedInvite&gt;**](FailedInvite.md) | invites that were not even attempted, and the reason why | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MultiInviteResult.new(
  success: null,
  failed: null
)
```

