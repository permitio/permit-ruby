# OpenapiClient::ResourceInstanceCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique identifier by which Permit will identify the resource instance for permission checks. You will later pass this identifier to the &#x60;permit.check()&#x60; API. A key can be anything: for example the resource db id, a url slug, a UUID or anything else as long as it&#39;s unique on your end. The resource instance key must be url-friendly. |  |
| **tenant** | **String** | the *key* of the tenant that this resource belongs to, used to enforce tenant boundaries in multi-tenant apps. | [optional] |
| **resource** | **String** | the *key* of the resource (type) of this resource instance. For example: if this resource instance is the annual budget document, the key of the resource might be &#x60;document&#x60;. |  |
| **attributes** | **Object** | Arbitraty resource attributes that will be used to enforce attribute-based access control policies. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResourceInstanceCreate.new(
  key: null,
  tenant: null,
  resource: null,
  attributes: null
)
```

