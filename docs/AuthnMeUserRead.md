# OpenapiClient::AuthnMeUserRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_type** | **String** |  | [optional][default to &#39;user&#39;] |
| **id** | **String** |  |  |
| **key** | **String** |  |  |
| **org_id** | **String** |  |  |
| **project_id** | **String** |  |  |
| **env_id** | **String** |  |  |
| **tenant_id** | **String** |  |  |
| **email** | **String** | Email of the user controlling this account |  |
| **name** | **String** | Name of this user | [optional] |
| **given_name** | **String** | Given name of the user | [optional] |
| **family_name** | **String** | Family name of the user | [optional] |
| **picture** | **String** | URL to picture, photo, or avatar of the user that controls this account. | [optional] |
| **is_onboarding** | **Boolean** |  | [optional][default to false] |
| **onboarding_step** | **String** |  | [optional][default to &#39;done&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuthnMeUserRead.new(
  actor_type: null,
  id: null,
  key: null,
  org_id: null,
  project_id: null,
  env_id: null,
  tenant_id: null,
  email: null,
  name: null,
  given_name: null,
  family_name: null,
  picture: null,
  is_onboarding: null,
  onboarding_step: null
)
```

