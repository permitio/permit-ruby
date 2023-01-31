# OpenapiClient::IdentityRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | Unique User Id of this identity in the identity provider (including the provider type) |  |
| **provider** | **String** | The identity provider type this identity came from |  |
| **sub** | **String** | Unique User Id of this identity in the identity provider (NOT including the provider type) |  |
| **email** | **String** | Email connected to this account identity |  |
| **email_verified** | **Boolean** | Whether this email address connected to this account identity is verified or not. For social providers like &#39;Login with Google&#39; this is done automatically, otherwise we will send the user a verification link in email. |  |
| **auth0_info** | **Object** | Raw user info json coming from our identity provider and matching a specific account identity |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IdentityRead.new(
  user_id: null,
  provider: null,
  sub: null,
  email: null,
  email_verified: null,
  auth0_info: null
)
```

