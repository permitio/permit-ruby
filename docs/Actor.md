# OpenapiClient::Actor

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::Actor.openapi_one_of
# =>
# [
#   :'AuthnMeAPIKeyRead',
#   :'AuthnMeMemberRead',
#   :'AuthnMeUserRead'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::Actor.openapi_discriminator_name
# => :'actor_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::Actor.openapi_discriminator_mapping
# =>
# {
#   :'api_key' => :'AuthnMeAPIKeyRead',
#   :'member' => :'AuthnMeMemberRead',
#   :'user' => :'AuthnMeUserRead'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::Actor.build(data)
# => #<AuthnMeAPIKeyRead:0x00007fdd4aab02a0>

OpenapiClient::Actor.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AuthnMeAPIKeyRead`
- `AuthnMeMemberRead`
- `AuthnMeUserRead`
- `nil` (if no type matches)

