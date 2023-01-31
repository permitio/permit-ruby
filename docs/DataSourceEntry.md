# OpenapiClient::DataSourceEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Url source to query for data |  |
| **config** | **Object** | Suggested fetcher configuration (e.g. auth or method) to fetch data with | [optional] |
| **topics** | **Array&lt;String&gt;** | topics the data applies to | [optional] |
| **dst_path** | **String** | OPA data api path to store the document at | [optional][default to &#39;&#39;] |
| **save_method** | **String** | Method used to write into OPA - PUT/PATCH | [optional][default to &#39;PUT&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DataSourceEntry.new(
  url: null,
  config: null,
  topics: null,
  dst_path: null,
  save_method: null
)
```

