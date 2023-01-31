# OpenapiClient::AuthnMeMemberRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_type** | **String** |  | [optional][default to &#39;member&#39;] |
| **id** | **String** |  |  |
| **email** | **String** | Email of the user controlling this account |  |
| **name** | **String** | Name of this user | [optional] |
| **given_name** | **String** | Given name of the user | [optional] |
| **family_name** | **String** | Family name of the user | [optional] |
| **picture** | **String** | URL to picture, photo, or avatar of the user that controls this account. | [optional] |
| **is_onboarding** | **Boolean** |  |  |
| **onboarding_step** | [**OnboardingStep**](OnboardingStep.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuthnMeMemberRead.new(
  actor_type: null,
  id: null,
  email: null,
  name: null,
  given_name: null,
  family_name: null,
  picture: null,
  is_onboarding: null,
  onboarding_step: null
)
```

