# OpenapiClient::OrgMemberRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique id of the account member |  |
| **email** | **String** | Email of the user controlling this account |  |
| **email_verified** | **Boolean** | Whether this email address is verified or not. For social providers like &#39;Login with Google&#39; this is done automatically, otherwise we will send the user a verification link in email. |  |
| **name** | **String** | Name of this user | [optional] |
| **given_name** | **String** | First name of the user | [optional] |
| **family_name** | **String** | Last name of the user | [optional] |
| **picture** | **String** | URL to picture, photo, or avatar of the user that controls this account. | [optional] |
| **is_superuser** | **Boolean** | Whether or not this user has special access to permit.io organizations |  |
| **is_onboarding** | **Boolean** | Whether or not this user is currently onboarding, needs to be replaced by a user journey object |  |
| **onboarding_step** | [**OnboardingStep**](OnboardingStep.md) | the step the user is currently going through in onboarding |  |
| **created_at** | **Time** | Date and time when the account member was created (ISO_8601 format). |  |
| **last_login** | **Time** | Last date and time this user logged in (ISO_8601 format). | [optional] |
| **last_ip** | **String** | Last IP address from which this user logged in. | [optional][default to &#39;0.0.0.0&#39;] |
| **logins_count** | **Integer** | Total number of logins this user has performed. | [optional][default to 0] |
| **identities** | [**Array&lt;IdentityRead&gt;**](IdentityRead.md) |  |  |
| **settings** | **Object** | Custom permit.io dashboard settings, such as preferred theme, etc. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrgMemberRead.new(
  id: null,
  email: null,
  email_verified: null,
  name: null,
  given_name: null,
  family_name: null,
  picture: null,
  is_superuser: null,
  is_onboarding: null,
  onboarding_step: null,
  created_at: null,
  last_login: null,
  last_ip: null,
  logins_count: null,
  identities: null,
  settings: null
)
```

