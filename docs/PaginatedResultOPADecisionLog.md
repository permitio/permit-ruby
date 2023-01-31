# OpenapiClient::PaginatedResultOPADecisionLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;OPADecisionLog&gt;**](OPADecisionLog.md) |  |  |
| **total_count** | **Integer** |  |  |
| **page_count** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaginatedResultOPADecisionLog.new(
  data: null,
  total_count: null,
  page_count: null
)
```

