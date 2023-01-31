# OpenapiClient::OrganizationCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the organization (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the organization. |  |
| **name** | **String** | The name of the organization, usually it&#39;s your company&#39;s name. |  |
| **settings** | **Object** | the settings for this project | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrganizationCreate.new(
  key: null,
  name: null,
  settings: null
)
```

