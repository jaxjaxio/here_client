# HereClient::OpenSearchAutosuggestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;OneOfAutosuggestEntityResultItemAutosuggestQueryResultItem&gt;**](OneOfAutosuggestEntityResultItemAutosuggestQueryResultItem.md) | The results are presented as a JSON list of candidates in ranked order (most-likely to least-likely) based on the matched location criteria. |  |
| **query_terms** | [**Array&lt;QueryTermResultItem&gt;**](QueryTermResultItem.md) | Suggestions for refining individual query terms |  |

## Example

```ruby
require 'here_client'

instance = HereClient::OpenSearchAutosuggestResponse.new(
  items: null,
  query_terms: null
)
```

