# OpenapiClient::OPAMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timer_rego_input_parse_ns** | **Integer** |  | [optional] |
| **timer_rego_query_parse_ns** | **Integer** |  | [optional] |
| **timer_rego_query_compile_ns** | **Integer** |  | [optional] |
| **timer_rego_query_eval_ns** | **Integer** |  | [optional] |
| **timer_rego_module_parse_ns** | **Integer** |  | [optional] |
| **timer_rego_module_compile_ns** | **Integer** |  | [optional] |
| **timer_server_handler_ns** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OPAMetrics.new(
  timer_rego_input_parse_ns: null,
  timer_rego_query_parse_ns: null,
  timer_rego_query_compile_ns: null,
  timer_rego_query_eval_ns: null,
  timer_rego_module_parse_ns: null,
  timer_rego_module_compile_ns: null,
  timer_server_handler_ns: null
)
```

