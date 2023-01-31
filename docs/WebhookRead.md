# OpenapiClient::WebhookRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique id of the webhook |  |
| **organization_id** | **String** | Unique id of the organization that the webhook belongs to. |  |
| **project_id** | **String** | Unique id of the project that the webhook belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the webhook belongs to. |  |
| **created_at** | **Time** | Date and time when the webhook was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the webhook was last updated/modified (ISO_8601 format). |  |
| **url** | **String** | The url to POST the webhook to |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookRead.new(
  id: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  created_at: null,
  updated_at: null,
  url: null
)
```

