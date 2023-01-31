# OpenapiClient::SSHAuthData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_type** | **String** |  | [optional][default to &#39;ssh&#39;] |
| **username** | **String** | SSH username |  |
| **public_key** | **String** | SSH public key | [optional] |
| **private_key** | **String** | SSH private key |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SSHAuthData.new(
  auth_type: null,
  username: null,
  public_key: null,
  private_key: null
)
```

