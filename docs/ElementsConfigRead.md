# OpenapiClient::ElementsConfigRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A URL-friendly name of the elements_config (i.e: slug). You will be able to query later using this key instead of the id (UUID) of the elements_config. |  |
| **id** | **String** | Unique id of the elements_config |  |
| **organization_id** | **String** | Unique id of the organization that the elements_config belongs to. |  |
| **project_id** | **String** | Unique id of the project that the elements_config belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the elements_config belongs to. |  |
| **created_at** | **Time** | Date and time when the elements_config was created (ISO_8601 format). |  |
| **updated_at** | **Time** | Date and time when the elements_config was last updated/modified (ISO_8601 format). |  |
| **is_active** | **Boolean** |  |  |
| **name** | **String** | The name of the elements_config |  |
| **elements_type** | [**ElementsType**](ElementsType.md) | The type of the elements interface, e.g: user management |  |
| **settings** | [**Hash&lt;String, Settings&gt;**](Settings.md) | Obj with the options of the elements interface, e.g: primary color |  |
| **roles_to_levels** | **Hash&lt;String, Array&lt;PermissionLevelRoleRead&gt;&gt;** | Obj with levels as keys and role ids as values |  |
| **webhook** | [**WebhookRead**](WebhookRead.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ElementsConfigRead.new(
  key: null,
  id: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  created_at: null,
  updated_at: null,
  is_active: null,
  name: null,
  elements_type: null,
  settings: null,
  roles_to_levels: null,
  webhook: null
)
```

