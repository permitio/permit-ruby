# OpenapiClient::PaginatedResultElementsConfigRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ElementsConfigRead&gt;**](ElementsConfigRead.md) |  |  |
| **total_count** | **Integer** |  |  |
| **page_count** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaginatedResultElementsConfigRead.new(
  data: null,
  total_count: null,
  page_count: null
)
```

