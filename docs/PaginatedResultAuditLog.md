# OpenapiClient::PaginatedResultAuditLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AuditLog&gt;**](AuditLog.md) |  |  |
| **total_count** | **Integer** |  |  |
| **page_count** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaginatedResultAuditLog.new(
  data: null,
  total_count: null,
  page_count: null
)
```

