# OpenapiClient::OrgMemberUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | **Object** | Custom permit.io dashboard settings, such as preferred theme, etc. | [optional] |
| **onboarding_step** | [**OnboardingStep**](OnboardingStep.md) | updates the onboarding step (optional) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrgMemberUpdate.new(
  settings: null,
  onboarding_step: null
)
```

