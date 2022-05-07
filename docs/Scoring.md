# HereClient::Scoring

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query_score** | **Float** | Indicates how good the input matches the returned address. It is equal to 1 if all input tokens are recognized and matched. | [optional] |
| **field_score** | [**FieldScore**](FieldScore.md) | Indicates how good the individual result fields match to the corresponding part of the query. Is included only for the result fields that are actually matched to the query. | [optional] |

## Example

```ruby
require 'here_client'

instance = HereClient::Scoring.new(
  query_score: null,
  field_score: null
)
```

