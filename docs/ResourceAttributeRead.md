# OpenapiClient::ResourceAttributeRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**AttributeType**](AttributeType.md) | The type of the attribute, we currently support: &#x60;bool&#x60;, &#x60;number&#x60; (ints, floats), &#x60;time&#x60; (a timestamp), &#x60;string&#x60;, and &#x60;json&#x60;. |  |
| **description** | **String** | An optional longer description of what this attribute respresents in your system | [optional] |
| **key** | **String** | A URL-friendly name of the attribute (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the attribute. |  |
| **id** | **String** | Unique id of the attribute |  |
| **resource_id** | **String** | Unique id of the resource that the attribute belongs to. |  |
| **resource_key** | **String** | A URL-friendly name of the resource (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the resource. |  |
| **organization_id** | **String** | Unique id of the organization that the attribute belongs to. |  |
| **project_id** | **String** | Unique id of the project that the attribute belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the attribute belongs to. |  |
| **created_at** | **Time** | Date and time when the attribute was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the attribute was last updated/modified (ISO_8601 format). |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResourceAttributeRead.new(
  type: null,
  description: null,
  key: null,
  id: null,
  resource_id: null,
  resource_key: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  created_at: null,
  updated_at: null
)
```

