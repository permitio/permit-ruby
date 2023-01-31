# OpenapiClient::ConditionSetRuleRemove

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_set** | **String** | The userset that will be unassigned these permission, i.e: all the users matching this rule will lose the specified permission |  |
| **permission** | **String** | The permission that will be removed from the userset *on* the resourceset. The permission can be either a resource action id, or &#x60;{resource_key}:{action_key}&#x60;, i.e: the \&quot;permission name\&quot;. |  |
| **resource_set** | **String** | The resourceset that represents the resources that are no longer granted for access, i.e: all the resources matching this rule can no longer be accessed by the userset, and will be revoked the specified *permission* |  |
| **is_role** | **Boolean** | if True, will set the condition set rule to the role&#39;s autogen user-set. | [optional][default to false] |
| **is_resource** | **Boolean** | if True, will set the condition set rule to the resource&#39;s autogen resource-set. | [optional][default to false] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ConditionSetRuleRemove.new(
  user_set: null,
  permission: null,
  resource_set: null,
  is_role: null,
  is_resource: null
)
```

