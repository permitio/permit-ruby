# OpenapiClient::UserRead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique id by which Permit will identify the user for permission checks. |  |
| **id** | **String** | Unique id of the user |  |
| **organization_id** | **String** | Unique id of the organization that the user belongs to. |  |
| **project_id** | **String** | Unique id of the project that the user belongs to. |  |
| **environment_id** | **String** | Unique id of the environment that the user belongs to. |  |
| **roles** | [**Array&lt;UserRole&gt;**](UserRole.md) |  | [optional] |
| **email** | **String** | The email of the user. If synced, will be unique inside the environment. | [optional] |
| **first_name** | **String** | First name of the user. | [optional] |
| **last_name** | **String** | Last name of the user. | [optional] |
| **attributes** | **Object** | Arbitraty user attributes that will be used to enforce attribute-based access control policies. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UserRead.new(
  key: null,
  id: null,
  organization_id: null,
  project_id: null,
  environment_id: null,
  roles: null,
  email: null,
  first_name: null,
  last_name: null,
  attributes: null
)
```

