# OpenapiClient::ResourceUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the resource | [optional] |
| **urn** | **String** | The [URN](https://en.wikipedia.org/wiki/Uniform_Resource_Name) (Uniform Resource Name) of the resource | [optional] |
| **description** | **String** | An optional longer description of what this resource respresents in your system | [optional] |
| **actions** | [**Hash&lt;String, ActionBlockEditable&gt;**](ActionBlockEditable.md) |          A actions definition block, typically contained within a resource type definition block.         The actions represents the ways you can interact with a protected resource.          | [optional] |
| **attributes** | [**Hash&lt;String, AttributeBlockEditable&gt;**](AttributeBlockEditable.md) | Attributes that each resource of this type defines, and can be used in your ABAC policies. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResourceUpdate.new(
  name: null,
  urn: null,
  description: null,
  actions: null,
  attributes: null
)
```

