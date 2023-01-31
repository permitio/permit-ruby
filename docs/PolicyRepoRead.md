# OpenapiClient::PolicyRepoRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique id of the policy repo |  |
| **status** | [**PolicyRepoStatus**](PolicyRepoStatus.md) |  |  |
| **key** | **String** | A URL-friendly name of the policy repo (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the policy repo. |  |
| **url** | **String** |  |  |
| **main_branch_name** | **String** |  | [optional][default to &#39;main&#39;] |
| **credentials** | [**SSHAuthData**](SSHAuthData.md) |  |  |
| **activate_when_validated** | **Boolean** | if you want to change your policy repository to this repo right after it is validated | [optional][default to false] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PolicyRepoRead.new(
  id: null,
  status: null,
  key: null,
  url: null,
  main_branch_name: null,
  credentials: null,
  activate_when_validated: null
)
```

