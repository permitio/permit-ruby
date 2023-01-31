# OpenapiClient::ResourceRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the resource (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the resource. |  |
| **id** | **String** | Unique id of the resource |  |
| **organization_id** | **String** | Unique id of the organization that the resource belongs to. |  |
| **project_id** | **String** | Unique id of the project that the resource belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the resource belongs to. |  |
| **created_at** | **Time** | Date and time when the resource was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the resource was last updated/modified (ISO_8601 format). |  |
| **name** | **String** | The name of the resource |  |
| **urn** | **String** | The [URN](https://en.wikipedia.org/wiki/Uniform_Resource_Name) (Uniform Resource Name) of the resource | [optional] |
| **description** | **String** | An optional longer description of what this resource respresents in your system | [optional] |
| **actions** | [**Hash&lt;String, ActionBlockRead&gt;**](ActionBlockRead.md) |          A actions definition block, typically contained within a resource type definition block.         The actions represents the ways you can interact with a protected resource.          | [optional] |
| **attributes** | [**Hash&lt;String, AttributeBlockRead&gt;**](AttributeBlockRead.md) | Attributes that each resource of this type defines, and can be used in your ABAC policies. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ResourceRead.new(
  key: null,
  id: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  created_at: null,
  updated_at: null,
  name: null,
  urn: null,
  description: null,
  actions: null,
  attributes: null
)
```

