# OpenapiClient::PaginatedResultAPIKeyRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;APIKeyRead&gt;**](APIKeyRead.md) |  |  |
| **total_count** | **Integer** |  |  |
| **page_count** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaginatedResultAPIKeyRead.new(
  data: null,
  total_count: null,
  page_count: null
)
```

