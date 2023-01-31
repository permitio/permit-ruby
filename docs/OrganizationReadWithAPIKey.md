# OpenapiClient::OrganizationReadWithAPIKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the organization (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the organization. |  |
| **id** | **String** | Unique id of the organization |  |
| **created_at** | **Time** | Date and time when the organization was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the organization was last updated/modified (ISO_8601 format). |  |
| **name** | **String** | The name of the organization, usually it&#39;s your company&#39;s name. |  |
| **settings** | **Object** | the settings for this project | [optional] |
| **api_key_id** | **String** |  | [optional] |
| **api_key_secret** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OrganizationReadWithAPIKey.new(
  key: null,
  id: null,
  created_at: null,
  updated_at: null,
  name: null,
  settings: null,
  api_key_id: null,
  api_key_secret: null
)
```

