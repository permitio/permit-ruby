# OpenapiClient::OPAEngineDecisionLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **engine** | **String** |  | [optional][default to &#39;OPA&#39;] |
| **decision_id** | **String** |  |  |
| **labels** | [**OPALabels**](OPALabels.md) |  |  |
| **timestamp** | **Time** |  |  |
| **path** | **String** |  |  |
| **input** | **Object** |  | [optional] |
| **result** | **Object** |  | [optional] |
| **metrics** | [**OPAMetrics**](OPAMetrics.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OPAEngineDecisionLog.new(
  engine: null,
  decision_id: null,
  labels: null,
  timestamp: null,
  path: null,
  input: null,
  result: null,
  metrics: null
)
```

